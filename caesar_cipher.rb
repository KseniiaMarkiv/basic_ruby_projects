# ! MORE UNDERSTANDABLE - but iterate all alphabet
print "Provide, please, a string: "
string = gets.chomp
print "Provide, please, a shift cipher: "
shift_factor = gets.chomp.to_i

def caesar_cipher(string, shift_factor)
  unless shift_factor.is_a? Numeric
    return "A shift cipher was not entered."
  end
  unless string.is_a? String
    return "A letters was not entered."
  end

  encrypted_string = string.chars.map do |char|
    is_uppercase = char == char.upcase
    alphabet = is_uppercase ? ('A'..'Z').to_a : ('a'..'z').to_a

    if alphabet.include?(char)
      new_index = (alphabet.index(char) + shift_factor) % 26
      alphabet[new_index]
    else
      char
    end
  end

  p encrypted_string.join
end

caesar_cipher(string, shift_factor)


# ! MORE EFFICIENT for optimization

def shifted(string, shift_amount)
  encrypted_string = string.split('').map do |letter|
    if letter =~ /[A-Za-z]/
      is_uppercase = letter == letter.upcase
      base = is_uppercase ? 'A'.ord : 'a'.ord
      new_letter = ((letter.ord - base + shift_amount) % 26 + base).chr
    else
      letter
    end
  end
  encrypted_string.join
end

p shifted("What a string!", 5)  # => "Bmfy f xywnsl!"
