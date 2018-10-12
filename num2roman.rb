class Integer

	def romanize()
		roman_numerals = {
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