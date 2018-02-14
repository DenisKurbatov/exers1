def palindrome?(string)
    array = (97..122).to_a
    str = ""
    string.downcase.each_byte {|s| str << s if array.include?(s)}
    str == str.reverse
end
