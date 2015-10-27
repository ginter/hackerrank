n, t = gets.split(' ').map &:to_i
widths = gets.split(' ').map &:to_i
segment_idxs = t.times.map { gets.split(' ').map &:to_i }

segment_idxs.each { |(i, j)| p widths[i..j].min }
