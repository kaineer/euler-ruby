class Task02
  def initialize
  end

  def next_pair(pair)
    [1 * pair.first + 2 * pair.last,
     2 * pair.first + 3 * pair.last
    ]
  end

  def sum_before(limit)
    pair = [1, 2]
    result = 0

    while pair.last < limit
      result += pair.last
      pair = next_pair(pair)
    end

    result
  end
end
