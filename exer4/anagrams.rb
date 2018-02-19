
def combine_anagrams(words)
  hash =  words.group_by {|word| word.chars.sort}
  array = hash.values
end

