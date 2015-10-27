def next_word word
  return if word.chars.uniq.count == 1

  swp = []
  rem = word.dup

  (word.length-1).downto(0).each do |i|
    chr = rem.slice! word[i]
    (i-1).downto(0).each { |j| return rem.insert(j, chr + swp.sort.join) if word[i] > word[j] }

    swp << chr
  end

  return
end

t = gets.to_i
words = t.times.map { gets.strip }

words.each { |w| print next_word(w) || 'no answer', "\n" }
