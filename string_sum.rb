require 'minitest/autorun'
class StringSum
  def self.add(data)
    return 0 if data.empty?
    return data.to_i if data.length == 1
  end
end
puts StringSum.add("") # => 0
puts StringSum.add("5") # => 5
class StringSumTest < Minitest::Test
  # Test for adding with an empty string.
  def test_addition_with_empty_string
    assert_equal 0, StringSum.add("")
  end
  # Test for adding with a single digit number.
  def test_addition_with_one_number
    assert_equal 2, StringSum.add("2")
  end
end
