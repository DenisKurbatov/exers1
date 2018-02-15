module Pal
    def palindrome?
        if self.is_a? String
            array = (97..122).to_a
            str = ""
            self.downcase.each_byte {|s| str << s if array.include?(s)}
            str == str.reverse
        else
            self == self.reverse
        end
    end
end
class String
    include Pal
end
class Array
    include Pal
end
