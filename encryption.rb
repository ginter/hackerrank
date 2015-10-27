sentence = gets.strip.gsub(/ /, '')
sq_rt = Math.sqrt sentence.length
rows, cols = (sq_rt.floor..sq_rt.ceil).
  to_a.
  repeated_permutation(2).
  detect { |r, c| r*c >= sentence.length }

(rows*cols).times do |i|
  idx = (i%rows)*cols + i/rows
  print sentence[idx]
  print ' ' if ((i+1) % rows).zero?
end
