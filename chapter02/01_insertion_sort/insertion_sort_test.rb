require 'minitest/autorun'
require './insertion_sort'

class InsertionSortTest < Minitest::Test
  def test_with_empty_array
    actual = InsertionSort.sort([])
    expected = []
    assert_equal(expected, actual)
  end

  def test_with_one_element_array
    actual = InsertionSort.sort([1])
    expected = [1]
    assert_equal(expected, actual)
  end

  def test_with_in_order_array
    actual = InsertionSort.sort([1, 2, 3, 4, 5])
    expected = [1, 2, 3, 4, 5]
    assert_equal(expected, actual)
  end

  def test_with_out_of_order_array
    actual = InsertionSort.sort([10, 5, 3, 4, 8])
    expected = [3, 4, 5, 8, 10]
    assert_equal(expected, actual)
  end

  def test_with_array_in_reverse_order
    actual = InsertionSort.sort([6, 5, 4, 3, 2, 1])
    expected = [1, 2, 3, 4, 5, 6]
    assert_equal(expected, actual)
  end

  def test_sorts_destructively
    array = [5, 4, 3]
    InsertionSort.sort(array)
    actual = array
    expected = [3, 4, 5]
    assert_equal(expected, actual)
  end
end
