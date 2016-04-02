require 'benchmark'
require_relative 'bubble_sort'
require_relative 'insertion_sort'
require_relative 'merge_sort'

# NOT SURE WHAT IM DOING HERE
class  SortingSuite::Benchmark
  #SPECS
  # Benchmark = SortingSuite::Benchmark.new
  #
  # benchmark.time(SortingSuite::InsertionSort, [3,3,4,5,1])
  # => "InsertionSort took 0.004333 seconds"
  #
  # benchmark.time(SortingSuite::MergeSort)
  # => "MergeSort took 0.000274 seconds"
  #
  # benchmark.fastest([2, 8, 1, 0, 5])
  # => "MergeSort is the fastest"
  #
  # benchmark.slowest([1, 2, 3, 4, 5])
  # => "BubbleSort is the slowest"

  def time(type, test_array)
    sorter = type.new

    time = Benchmark.realtime { sorter.sort(test_array)}.round(6)

    puts "#{type} took #{time} seconds"

  end


  def time_all(test_array)
    #instantiate all?
    bubble_time = Benchmark.realtime {bubble.sort(test_array)}.round(6)

    insertion_time =  Benchmark.realtime { insertion.sort(test_array)}.round(6)

    merge_time =  Benchmark.realtime {merge.sort(test_array)}.round(6)

    return bubble_time, insertion_time, merge_time
  end



  #consider send to consolidate fastest/slowest
  def fastest(test_array)
    bubble_time, insertion_time, merge_time = time_all(test_array)

    if bubble_time <= insertion_time && bubble_time <= merge_time
      puts "BubbleSort is the fastest."

    elsif insertion_time <= bubble_time && insertion_time <= merge_time
        puts "InsertionSort is the fastest."

    else
      puts "MergeSort is the fastest"

    end


  end

  def slowest(test_array)
    bubble_time, insertion_time, merge_time = time_all(test_array)

    if bubble_time >= insertion_time && bubble_time >= merge_time
      puts "BubbleSort is the slowest."

    elsif insertion_time >= bubble_time && insertion_time >= merge_time
        puts "InsertionSort is the slowest."

    else
      puts "MergeSort is the slowest"

    end


  end




end








#Test code to see how benchmark functions work
#
#
# insertion = InsertionSort.new
# bubble = BubbleSort.new
# merge = MergeSort.new
#
#

#
# def generate_test_array
#   test_array = []
#   1000.times do
#     test_array.push(rand(0.. 1000))
#   end
#   test_array
# end
#
# test_array = generate_test_array
#
# time = Benchmark.realtime { insertion.sort(test_array)}.round(8)
# puts "Insertion took #{time} seconds"
#
# time = Benchmark.realtime { bubble.sort(test_array)}.round(8)
# puts "Bubble took #{time} seconds"
#
# time = Benchmark.realtime { merge.sort(test_array)}.round(8)
# puts "Merge took #{time} seconds"
#
#
#
#
# Benchmark.bm do |bm|
#   puts "bubble"
#   bm.report{ 100.times do bubble.sort( test_array) end}
#   puts "insertion"
#   bm.report{100.times do insertion.sort(test_array)end }
#   puts "merge"
#   bm.report{100.times do merge.sort( test_array)end }
#
# end
