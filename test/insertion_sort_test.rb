require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/insertion_sort.rb'


class InsertionSortTest < MiniTest::Test
  def test_puts_first_element_in_sorted
    sorter = InsertionSort.new
    array1 = [2]
    assert_equal [2], sorter.sort(array1)
  end


  def test_sorts_2_element_array
    sorter = InsertionSort.new
    array1 = [2, 1]
    assert_equal [1, 2], sorter.sort(array1)

    array2 = [1, 2]
    assert_equal [1, 2], sorter.sort(array2)

    array3 = [2, 2]
    assert_equal [2, 2], sorter.sort(array3)
  end


  def test_sorts_variety_of_arrays
    sorter = InsertionSort.new
    array1 = [4, 3, 2, 1]
    assert_equal [1, 2, 3, 4], sorter.sort(array1)

    array2 = [3, 3, 3, 3]
    assert_equal [3, 3, 3, 3], sorter.sort(array2)

    array3 = [0, -1, -10, 5]
    assert_equal [-10, -1, 0, 5], sorter.sort(array3)

    array4 = [1, 3, 2, 4]
    assert_equal [1, 2, 3, 4], sorter.sort(array4)
  end

  def test_sorts_letters
    sorter = InsertionSort.new
    array1 = ["d", "c", "z", "r"]
    assert_equal ["c", "d", "r", "z"], sorter.sort(array1)

    array2 = ["d", "b", "a", "c"]
    assert_equal ["a", "b", "c", "d"], sorter.sort(array2)


  end

end
