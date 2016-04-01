class InsertionSort

  def sort(unsorted)
    sorted = []
    unsorted.each do |insert_num|
      if sorted.empty?
        sorted << insert_num
      else
        insertion_point = find_insertion_point(insert_num, sorted)
        sorted.insert(insertion_point, insert_num)
      end
    end
    sorted
  end

  def find_insertion_point(num, sorted)
    sorted.each_with_index do |sorted_num, index|
      if num <= sorted_num
        return index
      end
    end
    return sorted.length
  end
  
end
