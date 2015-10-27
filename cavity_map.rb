def cavity? pos, matrix
  return if pos.any? { |i| i == 0 || i == matrix.size - 1 }
  x, y = pos
  val = matrix[x][y]

  [matrix[x-1][y], matrix[x][y-1], matrix[x+1][y], matrix[x][y+1]].all? { |p| val > p }
end

n = gets.to_i
matrix = n.times.map { gets.split('').map(&:to_i) }
cavity_matrix = (0...n).map { |x| (0...n).map { |y| print cavity?([x, y], matrix) ? 'X' : matrix[x][y] }; print "\n" }
