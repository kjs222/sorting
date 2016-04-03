require 'benchmark'
require_relative 'bubble_sort'
require_relative 'insertion_sort'
require_relative 'merge_sort'

module SortingSuite

  class Benchmark

    def time(type, test_array=generate_test_array)
      puts "#{type} took #{timer(type, test_array)} milliseconds"
    end

    def timer(type, test_array=generate_test_array)
      sorter = type.new
      (Module::Benchmark.realtime{sorter.sort(test_array)}.*1000).round(4)
    end

    def time_all(test_array)
      bubble_time = timer(SortingSuite::BubbleSort, test_array)
      insertion_time =  timer(SortingSuite::InsertionSort, test_array)
      merge_time =  timer(SortingSuite::MergeSort, test_array)
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

    def generate_test_array
      test_array = []
      1000.times do
        test_array.push(rand(0..1000))
      end
      test_array
    end

  end

end


benchmark = SortingSuite::Benchmark.new
benchmark.time(SortingSuite::InsertionSort)
benchmark.time(SortingSuite::MergeSort)
benchmark.fastest([2, 8, 1, 0, 5])
benchmark.slowest([1, 2, 3, 4, 5])
