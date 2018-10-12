require "minitest/autorun"
require_relative "num2roman.rb"

class TestNum2Roman < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end
    
    def test_return_is_string
		assert_equal(String, 1.romanize().class)
	end

end