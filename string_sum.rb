require 'minitest/autorun'
class StringSum
  def self.add(data)
    return 0 if data.empty?
    data.split(/,|\n/).map(&:to_i).sum
end
end
puts StringSum.add("") # => 0
puts StringSum.add("5") # => 5
puts StringSum.add("3,5") # => 8
puts StringSum.add("5\n4,8") # => 17
class StringSumTest < Minitest::Test
  # Test for adding with an empty string.
  def test_addition_with_empty_string
    assert_equal 0, StringSum.add("")
  end
  # Test for adding with a single digit number.
  def test_addition_with_one_number
    assert_equal 2, StringSum.add("2")
  end
  # Test for adding with two digit numbers.
  def test_addition_with_two_numbers
    assert_equal 6, StringSum.add("2,4")
  end
  # Test for adding with a mix of comma and newline separated numbers.
  def test_addition_with_mixed_separators
    assert_equal 23, StringSum.add("5,7\n3,8")
  end

end
