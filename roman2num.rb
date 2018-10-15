class String

    def arabic_num()
        arabic_numerals = {
            'XL' => 40,
            'XC' => 90,
            'L' => 50,
            'IX' => 9,
            'X' => 10,
            'IV' => 4,
            'V' => 5,
            'I' => 1
        }
        x = self
        num_holder = []
        num = 0
        arabic_numerals.each do |key, value|
            num_holder << value * (x.scan(/#{key}/).count)
            temp = [key]
            temp.each {|v| x.sub!(v, '')}
        end
        num_holder.each {|v| num += v}
        return num
    end
end