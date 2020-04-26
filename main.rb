#Define a method that can take a string as input as well as a number up to 25 by how much it will shift the text

def caesar_cipher(str, shift_num=1)
  alphabet = ("a".."z").to_a
  result = ""

  str.each_char do |character|
    if !alphabet.include? character
      result += character
    else
      old_index = alphabet.find_index(character)
      new_index = ( old_index + shift_num ) % alphabet.count
      result += alphabet[new_index]
    end
  end
  puts result
end

caesar_cipher('patricia, i love you and think that you are super awesome', 7)