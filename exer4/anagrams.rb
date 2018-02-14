words = ["cars", "for", "potatoes", "racs", "four", "scar", "creams", "scream"]

def combine_anagrams(words)
  combine = [[]]

  words.each { |e|
    flag = false
      if combine[0].empty?
        combine[0][0] = e
        next
      else
        combine.each { |arr|
          if arr[0].split(//).sort == e.split(//).sort
            arr << e
            flag = true
            break;
          end

          }
          next if flag
          combine << [e]
      end

    }
    combine
end

print combine_anagrams(words)
