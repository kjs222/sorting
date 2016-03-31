require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/bubble_sort.rb'


class BubbleSortTest < MiniTest::Test

  def test_sorts_2_element_array
    bubble = BubbleSort.new
    array1 = [2, 1]
    assert_equal [1, 2], bubble.sort(array1)

    array2 = [1, 2]
    assert_equal [1, 2], bubble.sort(array2)

    array3 = [2, 2]
    assert_equal [2, 2], bubble.sort(array3)
  end

  def test_completes_1_bubble
    bubble = BubbleSort.new
    array1 = [4, 3, 2, 1]

    assert_equal 4, bubble.sort(array1)[-1]
  end

  def test_completes_all_bubbles
    bubble = BubbleSort.new
    array1 = [4, 3, 2, 1]
    assert_equal [1, 2, 3, 4], bubble.sort(array1)

    array2 = [3, 3, 3, 1]
    assert_equal [1, 3, 3, 3], bubble.sort(array2)

    array3 = [0, -1, -10, 5]
    assert_equal [-10, -1, 0, 5], bubble.sort(array3)

  end

  def test_sorts_letters
    bubble = BubbleSort.new
    array1 = ["d", "c", "z", "r"]
    assert_equal ["c", "d", "r", "z"], bubble.sort(array1)

  end


end
