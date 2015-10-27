def permutations word, prefix='', perms=[]
  return '' if word.length.zero?
  return perms << prefix + word if word.length == 1

  (0...word.length).each do |i|
    permutations(word.slice(0...i) + word.slice(i+1..-1), prefix + word[i], perms)
  end

  perms
end

print permutations(gets.strip).join("\n")
