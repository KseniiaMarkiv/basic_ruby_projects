def substrings word, dictionary
  words = word.downcase.split
  dictionary.reduce(Hash.new(0)) do |result, word|
    words.each do |w|
      if w.include? word
        result[word] += 1
      end
    end
    result
  end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings "below", dictionary
p substrings("Howdy partner, sit down! How's it going?", dictionary)  
