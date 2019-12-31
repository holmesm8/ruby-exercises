require_relative "test_helper"
require "./lib/simple_math"

class SimpleMathTest < Minitest::Test

  def test_it_can_add_two_numbers
    sm = SimpleMath.new

    result = sm.add(2,2)
    expected = 4

    assert_equal expected, result
  end

  def test_it_can_add_two_different_numbers
    sm = SimpleMath.new

    result = sm.add(5,3)
    expected = 8

    assert_equal expected, result
  end

  def test_it_can_subtract_two_numbers
    sm = SimpleMath.new

    result = sm.subtract(10,2)
    expected = 8

    assert_equal expected, result
  end

  def test_it_can_subtract_two_other_numbers
    sm = SimpleMath.new

    result = sm.subtract(50,27)
    expected = 23

    assert_equal expected, result
  end

  def test_it_can_multiply_two_numbers
    sm = SimpleMath.new

    result = sm.multiply(5,4)
    expected = 20

    assert_equal expected, result
  end


  def test_it_can_multiply_two_other_numbers
    sm = SimpleMath.new

    result = sm.multiply(4,3)
    expected = 12

    assert_equal expected, result
  end

  def test_it_can_divide_two_numbers
    sm = SimpleMath.new

    result = sm.divide(100,2)
    expected = 50

    assert_equal expected, result
  end

  def test_it_can_divide_two_other_numbers
    sm = SimpleMath.new

    result = sm.divide(20,2)
    expected = 10

    assert_equal expected, result
  end
end
