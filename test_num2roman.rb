require "minitest/autorun"
require_relative "num2roman.rb"

class TestNum2Roman < Minitest::Test

    def test_assert_that_1_equals_1
        assert_equal(1, 1)
    end
    
    def test_return_is_string
		assert_equal(String, 1.romanize().class)
	end

	def test_return_I_for_1
		assert_equal('I', 1.romanize())
	end

	def test_return_II_for_2
		assert_equal('II', 2.romanize())
	end

	def test_return_IV_for_4
		assert_equal('IV', 4.romanize())
	end

	def test_return_V_for_5
		assert_equal('V', 5.romanize())
	end

	def test_return_VII_for_7
		assert_equal('VII', 7.romanize())
	end

	def test_return_IX_for_9
		assert_equal('IX', 9.romanize())
	end

	def test_return_X_for_10
		assert_equal('X', 10.romanize())
	end

	def test_return_XIV_for_14
		assert_equal('XIV', 14.romanize())
	end

	def test_return_XL_for_40
		assert_equal('XL', 40.romanize())
	end

	def test_return_L_for_50
		assert_equal('L', 50.romanize())
	end

	def test_return_XC_for_90
		assert_equal('XC', 90.romanize())
	end

	def test_return_C_for_100
		assert_equal('C', 100.romanize())
	end
	
	def test_return_CD_for_400
		assert_equal('CD', 400.romanize())
	end

	def test_return_D_for_500
		assert_equal('D', 500.romanize())
	end


end