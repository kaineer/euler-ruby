class Task01
  def initialize(limit)
    @limit = limit
  end

  attr_reader :limit

  def sum
    quick_sum
  end

  def naive_sum
    (1...limit).inject(0) {|sum, e|
      ((e % 3 == 0) || (e % 5 == 0)) ? sum + e : sum
    }
  end

  def sum_divisible_by(n)
    count = (limit - 1) / n
    n * ((count * (count + 1)) / 2)
  end

  def quick_sum
    sum_divisible_by(3) + sum_divisible_by(5) - sum_divisible_by(15)
  end

end

if $0 == __FILE__
  task01 = Task01.new(1000)
  puts "Result for 1000 is: #{task01.sum}"
end
