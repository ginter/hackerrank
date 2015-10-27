class FindDecentNumber
  def initialize n
    @n = n
  end

  def run
    current = '5' * @n
    finish = '3' * @n

    while true
      break p current.to_i if decent_number? current
      break p -1 if current == finish

      current = next_perm current
    end
  end

  def next_perm n
    idx = n.reverse.index '5'
    n[0..-(idx+2)] + '3' + '5' * idx
  end

  def decent_number? n
    n.count('5') % 3 == 0 && n.count('3') % 5 == 0
  end
end

t = gets.to_i
ns = t.times.map { gets.to_i }
ns.each { |n| FindDecentNumber.new(n).run }
