def caesar_cipher(str, shift_num=1)
  alphabet_low = ("a".."z").to_a
  alphabet_up = ("A".."Z").to_a
  result = ""

  str.each_char do |character|
    if (!alphabet_low.include? character) && (!alphabet_up.include? character)
      character
      result += character

    elsif alphabet_low.include? character
      old_index = alphabet_low.find_index(character)
      new_index = ( old_index + shift_num ) % alphabet_low.count
      result += alphabet_low[new_index]

    elsif alphabet_up.include? character
      old_index = alphabet_up.find_index(character)
      new_index = (old_index + shift_num) % alphabet_up.count
      result += alphabet_up[new_index]
    end
  end
  puts result
end

caesar_cipher("Hey there, buddy! Hope you're having an AWESOME day!", 10)