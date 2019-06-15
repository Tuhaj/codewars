class VanEck
  def initialize
    @sequence = [0]
  end

  def add_next_number
    rindex = @sequence[0..-2].rindex(@sequence[-1])
    if rindex
      @sequence << (@sequence.size - rindex -1)
    else
      @sequence << 0
    end
  end

  def sequence(size)
    return nil if size < 0
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
