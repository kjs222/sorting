module SortingSuite

  class SelectionSort

    def sort(unsorted)
      start = 0
      while start < unsorted.length
        unsorted = move_smallest_to_front(unsorted, find_smallest(unsorted, start), start)
        start += 1
      end
      unsorted
    end

    def find_smallest(array, start=0)
      smallest = array[start]
      smallest_index = start
      array[start..-1].each_with_index do |item, index|
        if item < smallest
          smallest = array[start + index]
          smallest_index = start + index
        end
      end
      return smallest_index
    end

    def move_smallest_to_front(array, smallest_index, start=0)
      if smallest_index > 0
        array.insert(start, array[smallest_index])
        array.delete_at(smallest_index + 1)
      end
      array
    end

  end

end
