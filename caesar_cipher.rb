#! MORE UNDERSTANDABLE - but iterate all alphabet

def caesar_cipher(string, shift_factor)
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

  encrypted_string.join
end

puts caesar_cipher("What a string!", 5) # => "Bmfy f xywnsl!"



#! MORE EFFICIENT for optimization

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

shifted("What a string!", 5)  # => "Bmfy f xywnsl!"
