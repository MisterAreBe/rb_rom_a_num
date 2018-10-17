class String
    def arabic_numerals() 
        {
            'CM' => 900, 'M' => 1000, 'CD' => 400, 'D' => 500,
            'XC' => 90, 'C' => 100, 'XL' => 40, 'L' => 50,
            'IX' => 9, 'X' => 10, 'IV' => 4, 'V' => 5,
            'I' => 1
        }
    end

    def arabic_num()
        x = self
        num_holder = []
        num = 0
        arabic_numerals().each do |key, value|
            num_holder << value * (x.scan(/#{key}/).count)
            temp = [key]
            temp.each {|v| x.sub!(v, '')}
        end
        num_holder.each {|v| num += v}
        return num
    end

    def deroman()
        x = self.upcase!
        x.each_char do |v|
            if !arabic_numerals().has_key?(v)
                return 'Error: Non-Roman Numerals Entered'
            end
        end
        x.arabic_num()
    end
end