module Pal
    def palindrome?
        if self.is_a? String
            str = self.gsub(/[^A-Za-z]/, "").downcase
            str==str.reverse
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
