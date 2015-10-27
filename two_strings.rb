t = gets.to_i

t.times.map { 2.times.map { gets.strip } }.each do |a, b|
  print (a.chars & b.chars).any?? 'YES' : 'NO', "\n"
end
