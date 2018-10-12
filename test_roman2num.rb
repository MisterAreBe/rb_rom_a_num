require "minitest/autorun"
require_relative "roman2num.rb"

class TestRoman2Num < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_return_is_integer
        assert_equal(Integer, ''.arabic_num().class)
    end

end