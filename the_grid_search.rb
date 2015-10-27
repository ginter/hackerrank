def contains_pattern? grid, g_n, g_m, pattern, p_n, p_m
  grid.size.times do |i|
    next if (i % g_m) + p_m > g_m
    next if (i / g_m) + p_n > g_n

    subgrid = p_n.times.map do |col|
      offset = col*g_m
      grid[(offset+i)...(offset+i+p_m)]
    end.join

    return true if subgrid == pattern
  end
  return false
end

def process_test_case
  g_n, g_m = gets.split(' ').map(&:to_i)
  grid = g_n.times.map { gets.strip }.join
  p_n, p_m = gets.split(' ').map(&:to_i)
  pattern = p_n.times.map { gets.strip }.join

  result = contains_pattern? grid, g_n, g_m, pattern, p_n, p_m

  print result ? 'YES' : 'NO'
  print "\n"
end

t = gets.to_i
t.times { process_test_case }
