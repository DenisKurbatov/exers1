def count_words(string)
  str = string.delete "?!,.-"
  array = str.downcase.split(" ")
  hash = Hash.new(0)
  array.each { |e| hash[e] += 1  }
  hash
end
