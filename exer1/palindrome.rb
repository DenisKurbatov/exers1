def palindrome?(string)
    str = string.gsub(/[^A-Za-z]/, "").downcase
    str == str.reverse
end
