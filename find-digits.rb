t = gets.to_i
t.times.map { gets.to_i }.each do |n|
  div = n
  count = 0

  until div.zero?
    count += 1 if (n % (div%10)).zero? rescue ZeroDivisionError
    div /= 10
  end
  p count
end
