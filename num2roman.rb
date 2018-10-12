class Integer

	def romanize()
		roman_numerals = {
			'I' => 1
		}
		x = self
		roman = ''
		roman_numerals.each do |key, value|
			roman << key*(x/value)
		end
		return roman
	end
end