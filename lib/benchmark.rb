require 'benchmark'
require_relative 'bubble_sort'
require_relative 'insertion_sort'
require_relative 'merge_sort'
require_relative 'selection_sort'

module SortingSuite

  class Benchmark

    def time(type, test_array=generate_test_array)
      puts "#{type} took #{timer(type, test_array)} milliseconds"
    end

    def timer(type, test_array=generate_test_array)
      sorter = type.new
      seconds = Module::Benchmark.realtime{sorter.sort(test_array)}
      milliseconds = (seconds * 1000).round(4)
    end

    def time_all(test_array=generate_test_array)
      time_hash = Hash.new
      time_hash["BubbleSort"] = timer(SortingSuite::BubbleSort, test_array)
      time_hash["InsertionSort"] = timer(SortingSuite::InsertionSort, test_array)
      time_hash["MergeSort"] =  timer(SortingSuite::MergeSort, test_array)
      time_hash["SelectionSort"]= timer(SortingSuite::SelectionSort, test_array)
      return time_hash
    end

    def fastest(test_array=generate_test_array)
      time_hash = time_all(test_array)
      fastest_type= time_hash.key(time_hash.values.sort[0])
      message = "#{fastest_type} is the fastest."
      puts message
      return message

    end

    def slowest(test_array=generate_test_array)
      time_hash = time_all(test_array)
      slowest_type= time_hash.key(time_hash.values.sort[-1])
      message = "#{slowest_type} is the slowest."
      puts message
      return message
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
benchmark.fastest
benchmark.slowest
p benchmark.time_all
p benchmark.time_all([2, 8, 1, 0, 5])
