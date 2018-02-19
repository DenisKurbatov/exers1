def count_words(string)
  array = string.gsub(/[^A-Za-z]/, " ").downcase.split(" ")
  array.inject(Hash.new(0)) {|hash, k| hash[k] += 1; hash}
end
