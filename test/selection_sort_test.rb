require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/selection_sort.rb'


class SelectionSortTest < MiniTest::Test

  def test_it_finds_smallest
    sorter = SortingSuite::SelectionSort.new
    array1 = [2, 1]
    array2 = [7, 4, 3, 3, 10]
    assert_equal 1, sorter.find_smallest(array1)
    assert_equal 2, sorter.find_smallest(array2)
  end

  def test_it_moves_smallest_to_front
    sorter = SortingSuite::SelectionSort.new
    array1 = [2, 1]
    array2 = [7, 4, 3, 3, 10]
    array3 = [1, 2, 3]
    smallest1 = sorter.find_smallest(array1)
    smallest2 = sorter.find_smallest(array2)
    smallest3 = sorter.find_smallest(array3)
    assert_equal [1, 2], sorter.move_smallest_to_front(array1, smallest1)
    assert_equal [3, 7, 4, 3, 10], sorter.move_smallest_to_front(array2, smallest2)
    assert_equal [1, 2, 3], sorter.move_smallest_to_front(array3, smallest3)
  end

  def test_it_sorts_2_element_array
    sorter = SortingSuite::SelectionSort.new
    array1 = [2, 1]
    array2 = [1, 2]
    assert_equal [1, 2], sorter.sort(array1)
    assert_equal [1, 2], sorter.sort(array1)
  end




    #

  # def test_sorts_2_element_array
  #   sorter = SelectionSort.new
  #   array1 = [2, 1]
  #   assert_equal [1, 2], sorter.sort(array1)
  #
  #   array2 = [1, 2]
  #   assert_equal [1, 2], sorter.sort(array2)
  #
  #   array3 = [2, 2]
  #   assert_equal [2, 2], sorter.sort(array3)
  # end
  #
  # def test_sorts_variety_of_arrays
  #   sorter = SelectionSort.new
  #   array1 = [4, 3, 2, 1]
  #   assert_equal [1, 2, 3, 4], sorter.sort(array1)
  #
  #   array2 = [3, 3, 3, 3]
  #   assert_equal [3, 3, 3, 3], sorter.sort(array2)
  #
  #   array3 = [0, -1, -10, 5]
  #   assert_equal [-10, -1, 0, 5], sorter.sort(array3)
  #
  #   array4 = [1, 3, 2, 4]
  #   assert_equal [1, 2, 3, 4], sorter.sort(array4)
  # end
  #
  # def test_sorts_letters
  #   sorter = SelectionSort.new
  #   array1 = ["d", "c", "z", "r"]
  #   assert_equal ["c", "d", "r", "z"], sorter.sort(array1)
  #
  #   array2 = ["d", "b", "a", "c"]
  #   assert_equal ["a", "b", "c", "d"], sorter.sort(array2)
  # end
  #
  # def test_it_returns_empty_and_1_element_arrays
  #   sorter = SelectionSort.new
  #   arr1 = [0]
  #   arr2 = []
  #   assert_equal [0], sorter.sort(arr1)
  #   assert_equal [], sorter.sort(arr2)
  # end

end
