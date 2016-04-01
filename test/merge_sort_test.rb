require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/merge_sort.rb'


class MergeSortTest < MiniTest::Test

  def test_finds_correct_split_point
    sorter = MergeSort.new
    assert_equal 2, sorter.split_point(5)
    assert_equal 0, sorter.split_point(1)
    assert_equal 3, sorter.split_point(6)
  end

  def test_splits_correctly
    sorter = MergeSort.new

    arr1 = [4, 3, 2, 2]
    assert_equal [[4, 3],[2, 2]], sorter.split(arr1)

    arr2 = [4, 3, 2]
    assert_equal [[4],[3, 2]], sorter.split(arr2)

  end

  def test_sorts_1_and_2_element_arrays
    sorter = MergeSort.new
    arr1 = [4, 3]
    assert_equal [3, 4], sorter.sort_split(arr1)

    arr2 = [4]
    assert_equal [4], sorter.sort_split(arr2)

  end

  def test_merges_two_sorted_lists
    sorter = MergeSort.new
    arr1 = [1, 2]
    arr2 = [3, 4]
    assert_equal [1, 2, 3, 4], sorter.merge_split(arr1, arr2)

    arr1 = [2, 2]
    arr2 = [1, 4]
    assert_equal [1, 2, 2, 4], sorter.merge_split(arr1, arr2)

    arr1 = [8]
    arr2 = [1]
    assert_equal [1, 8], sorter.merge_split(arr1, arr2)

    arr1 = [7, 8]
    arr2 = [1]
    assert_equal [1, 7, 8], sorter.merge_split(arr1, arr2)
  end



  def test_it_sorts_4_element_array
    skip
    sorter = MergeSort.new
    arr1 = [4, 3, 2, 2]
    assert_equal [2, 2, 3, 4], sorter.sort(arr1)

  end

  def test_it_sorts_3_element_array

  end

  def test_it_sorts_longer_array

  end


end
