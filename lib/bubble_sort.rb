class BubbleSort

  def sort(to_sort, first_position=0, unsorted_area=to_sort.length)
    while unsorted_area > 0
      while first_position + 1 < unsorted_area
        swap_if_greater(to_sort, first_position)
        first_position += 1
      end
      unsorted_area -= 1
      first_position = 0
    end
    to_sort
  end

  def swap_if_greater(array, first_position)
    first_value = array[first_position]
    second_value = array[first_position + 1]
    if first_value > second_value
      array[first_position] = second_value
      array[first_position + 1] = first_value
    end
  end


end
