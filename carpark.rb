def escape(carpark)
  result = []
  down = 0
  my_floor = carpark.find_index { |floor| floor.find_index(2) }
  current_position = carpark[my_floor].find_index(2)
  carpark.drop(my_floor).each do |floor|
    case staircase ||= floor.find_index(1)
    when nil
      result << "D#{down}" if down > 0
      last_move = floor.size - current_position - 1
      result << "R#{last_move}" if last_move != 0
    when current_position
      down += 1
      next
    else
      result << "D#{down}" if down > 0
      down = 1
      result << "R#{staircase - current_position}" if staircase > current_position
      result << "L#{current_position - staircase}" if staircase < current_position
      current_position = staircase
    end
  end
  result
end
