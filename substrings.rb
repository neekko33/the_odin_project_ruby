dictionary = %w[below down go going horn how howdy it i low own part partner sit]

words = "Howdy partner, sit down! How's it going?"

def substrings(words, dictionary)
  words_downcase = words.downcase
  result = dictionary.each_with_object(Hash.new(0)) do |word, acc|
    acc[word] = words_downcase.scan(word).size
  end
  result.select {|_, count| count > 0}
end

print substrings(words, dictionary)
