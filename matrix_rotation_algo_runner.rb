require_relative 'matrix_rotation_algo_optimized'

m, n, r = gets.split(' ').map(&:to_i)
data = m.times.map { gets }.join
matrix = Matrix.populate data

print matrix.rotate(r).to_s
