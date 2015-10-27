t = gets.to_i
test_cases = t.times.map { gets.split(' ').map(&:to_i) }

test_cases.each do |(n, c, m)|
  wrappers = purchased = n / c

  until wrappers < m
    bonus = wrappers / m
    purchased += bonus
    wrappers -= bonus * (m-1)
  end

  p purchased
end
