require "minitest/autorun"
require_relative "roman2num.rb"

class TestRoman2Num < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end

    def test_return_is_integer
        assert_equal(Integer, ''.arabic_num().class)
    end

    def test_return_1_for_I
        assert_equal(1, 'I'.arabic_num())
    end

    def test_return_2_for_II
        assert_equal(2, 'II'.arabic_num())
    end

    def test_return_4_for_IV
        assert_equal(4, 'IV'.arabic_num())
    end

    def test_return_5_for_V
        assert_equal(5, 'V'.arabic_num())
    end

    def test_return_8_for_VIII
        assert_equal(8, 'VIII'.arabic_num())
    end
    
    def test_return_9_for_IX
        assert_equal(9, 'IX'.arabic_num())
    end
    
    def test_return_10_for_X
        assert_equal(10, 'X'.arabic_num())
    end
    
    def test_return_40_for_XL
        assert_equal(40, 'XL'.arabic_num())
    end
    
    def test_return_50_for_L
        assert_equal(50, 'L'.arabic_num())
    end

    def test_return_90_for_XC
        assert_equal(90, 'XC'.arabic_num())
    end

    def test_return_C_for_100
        assert_equal(100, 'C'.arabic_num())
    end
    
    def test_return_400_for_CD
        assert_equal(400, 'CD'.arabic_num())
    end

end