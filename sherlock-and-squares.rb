t = gets.to_i
t.times.map do
  a, b = gets.split(' ').map(&:to_i)
  p (Math.sqrt(a).ceil..Math.sqrt(b).floor).count
end
