def next_word orig
  perms = orig.chars.permutation.sort.uniq

  if nxt = perms[perms.index(orig.chars) + 1]
    nxt.join
  end
end

t = gets.to_i
words = t.times.map { gets.strip }

words.each { |w| print next_word(w) || 'no answer', "\n" }
