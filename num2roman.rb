class Integer

	def romanize()
		roman_numerals = {
			'D' => 500,
			'CD' => 400,
			'C' => 100,
			'XC' => 90,
			'L' => 50,
			'XL' => 40,
			'X' => 10,
			'IX' => 9,
			'V' => 5,
			'IV' => 4,
			'I' => 1
		}
		x = self
		roman = ''
		roman_numerals.each do |key, value|
			roman << key * (x / value)
			x = x % value
		end
		return roman
	end
end