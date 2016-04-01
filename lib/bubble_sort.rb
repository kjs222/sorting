class BubbleSort

  def sort(to_sort, first_position=0, second_position=1, sort_range=to_sort.length)
    while sort_range > 0
      while first_position + 1 < sort_range
        swap_if_reversed(to_sort, first_position)
        first_position += 1
        #second_position += 1
        to_sort
      end
      sort_range = sort_range - 1
      first_position = 0
      #second_position = 1
    end
    to_sort
  end

def swap_if_reversed(array, first_position)
  first_value = array[first_position]
  second_value = array[first_position + 1]
  if first_value > second_value
    array[first_position] = second_value
    array[first_position + 1] = first_value
  end
end



end
