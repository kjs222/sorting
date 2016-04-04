require 'minitest/autorun'
require 'minitest/pride'
require_relative './lib/benchmark.rb'
require 'benchmark'


class BenchmarkSortTest < MiniTest::Test
  def test_output_format_is_correct

    benchmark = SortingSuite::Benchmark.new

    output = benchmark.fastest([5, 4, 3, 2, 1])
    split = output.split
    output_stripped_of_type = split[1..-1].join(' ')

    assert_equal "is the fastest.", output_stripped_of_type

    output = benchmark.slowest([5, 4, 3, 2, 1])
    split = output.split
    output_stripped_of_type = split[1..-1].join(' ')

    assert_equal "is the slowest.", output_stripped_of_type

  end

  def test_fastest_and_slowest_identified

    benchmark = SortingSuite::Benchmark.new

    timer_hash_by_time = benchmark.time_all.invert
    fastest_to_slowest = timer_hash_by_time.to_a.sort
    slowest =  benchmark.slowest.split[0]
    fastest = benchmark.fastest.split[0]

    assert_equal fastest_to_slowest[0][1], fastest
    assert_equal fastest_to_slowest[-1][1], slowest
  end

end
