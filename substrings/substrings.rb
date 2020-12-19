#Dictionary of valid substrings
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

#Substrings method
def substrings(string, dictionary)
  matches = {}

  dictionary.each do |word|
    matches[word] = string.downcase.scan(word).count if string.downcase.include?(word)
  end

matches
end

puts substrings("below", dictionary)
puts substrings("Howdy partner, sit down! How's it going?", dictionary)

