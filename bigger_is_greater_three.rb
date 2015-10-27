def next_word word
  res = next_permutation word.chars
  res.join unless res.join == word
end

def next_permutation ary
  return ary if ary.length < 2

  found_k = (ary.length-2).downto(0).detect { |k| ary[k] < ary[k+1] }
  return ary unless found_k

  found_l = (ary.length-1).downto(found_k+1).detect(->{ -1 }) { |l| ary[found_k] < ary[l] }

  ary[found_k], ary[found_l] = ary[found_l], ary[found_k] if found_k < found_l
  ary[(found_k+1)..-1] = ary[(found_k+1)..-1].reverse

  ary
end

t = gets.to_i
words = t.times.map { gets.strip }

words.each { |w| print next_word(w) || 'no answer', "\n" }
