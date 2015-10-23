def apply_cipher char, idx
  lower_alph = ('a'..'z')
  upper_alph = ('A'..'Z')

  case char
  when lower_alph then shift char, idx, lower_alph.to_a
  when upper_alph then shift char, idx, upper_alph.to_a
  else char
  end
end

def shift char, idx, alphabet
  alphabet[(alphabet.index(char) + idx) % 26]
end

_ = gets.to_i
s = gets
k = gets.to_i

print s.chars.map { |c| apply_cipher c, k }.join
