# frozen_string_literal: true

# ! MORE UNDERSTANDABLE - but iterate all alphabet

print 'Provide, please, a string: '
string = gets.chomp
print 'Provide, please, a shift cipher: '
shift_factor = gets.chomp.to_i

def caesar_cipher(string, shift_factor)
  return 'A shift cipher was not entered.' unless shift_factor.is_a? Numeric
  return 'A letters was not entered.' unless string.is_a? String

  encrypted_string = string.chars.map do |letter|
    is_uppercase = letter == letter.upcase
    alphabet = is_uppercase ? ('A'..'Z').to_a : ('a'..'z').to_a

    if alphabet.include?(letter)
      new_index = (alphabet.index(letter) + shift_factor) % 26
      alphabet[new_index]
    else
      letter
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
      ((letter.ord - base + shift_amount) % 26 + base).chr
    else
      letter
    end
  end
  encrypted_string.join
end

p shifted('What a string!', 5) # => "Bmfy f xywnsl!"
