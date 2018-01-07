require 'minitest/autorun'
require './bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_with_empty_array
    actual = BubbleSort.sort([])
    expected = []
    assert_equal(expected, actual)
  end

  def test_with_one_element_array
    actual = BubbleSort.sort([1])
    expected = [1]
    assert_equal(expected, actual)
  end

  def test_with_in_order_array
    actual = BubbleSort.sort([1, 2, 3, 4, 5])
    expected = [1, 2, 3, 4, 5]
    assert_equal(expected, actual)
  end

  def test_with_out_of_order_array
    actual = BubbleSort.sort([10, 5, 3, 4, 8])
    expected = [3, 4, 5, 8, 10]
    assert_equal(expected, actual)
  end

  def test_with_array_in_reverse_order
    actual = BubbleSort.sort([6, 5, 4, 3, 2, 1])
    expected = [1, 2, 3, 4, 5, 6]
    assert_equal(expected, actual)
  end

  def test_sorts_destructively
    array = [5, 4, 3]
    BubbleSort.sort(array)
    actual = array
    expected = [3, 4, 5]
    assert_equal(expected, actual)
  end
end
