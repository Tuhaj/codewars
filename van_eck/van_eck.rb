class VanEck
  def initialize
    @sequence = [0]
  end

  def add_next_number
    rindex = @sequence[0..-2].rindex(@sequence[-1])
    next_number = rindex ? (@sequence.size - rindex -1) : 0
    @sequence << next_number
  end

  def sequence(size)
    return nil if size < 1
    (size -1).times do
      add_next_number
    end
    @sequence
  end

  def get_index_of(num)
    last_index = 0
    while @sequence[-1] != num do
      add_next_number
      last_index += 1
    end
    last_index
  end
end
