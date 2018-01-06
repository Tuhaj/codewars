def escape(carpark)
  result = []

  starting_floor = carpark[0]
  start = starting_floor.find_index(2)
  staircase = starting_floor.find_index(1)
  unless staircase
    if start + 1 == starting_floor.size
      return result
    else
      return ["R#{starting_floor.size - start - 1}"]
    end
  end
  if start > staircase
    result << "L#{start - staircase}"
  end
  if start < staircase
    result << "R#{staircase - start}"
  end
  current_index = staircase
  down = 1
  carpark.each_with_index do |floor, index|
    next if index == 0
    staircase = floor.find_index(1)
    if staircase == current_index
      down += 1
      next
    else
      if staircase
        result << "D#{down}"
        down = 1
        if staircase > current_index
          result << "R#{staircase - current_index}"
        end
        if staircase < current_index
          result << "L#{current_index - staircase}"
        end
        current_index = staircase
      else
        result << "D#{down}"
        result << "R#{floor.size - current_index - 1}" if (floor.size - current_index - 1) != 0
      end
    end
  end
  result
end
