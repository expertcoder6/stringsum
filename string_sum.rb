require 'minitest/autorun'
class StringSum
  def self.add(data)
    return 0 if data.empty?
  end
end
puts StringSum.add("") # => 0
class StringSumTest < Minitest::Test
  # Test for adding with an empty string.
  def test_addition_with_empty_string
    assert_equal 0, StringSum.add("")
  end
end
