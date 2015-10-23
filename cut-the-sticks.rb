n = gets.to_i
lengths = gets.split(' ').map &:to_i

lengths.uniq.sort.each do |x|
  p n
  n -= lengths.count x
end
