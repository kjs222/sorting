class BubbleSort


  def sort(to_sort, unsorted_area=to_sort.length)
    while unsorted_area > 0
      current_position = 0
      while current_position + 1 < unsorted_area
        swap_if_larger(to_sort, current_position)
        current_position += 1
      end
      unsorted_area -= 1
    end
    to_sort
  end

  def swap_if_larger(array, current_position)
    current_value = array[current_position]
    next_value = array[current_position + 1]
    if current_value > next_value
      array[current_position] = next_value
      array[current_position + 1] = current_value
    end
  end


end
