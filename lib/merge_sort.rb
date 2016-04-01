class MergeSort


  def sort(array)


  end

  def sort_split(arr)
    sorted = [arr[0]]
    if arr[1] && arr[1] < sorted[0]
      sorted.unshift(arr[1])
    elsif arr[1]
      sorted << arr[1]
    else
      sorted
    end
  end




  def determine_split_point(length)
    if length.even?
      length/2
    else
      length/2.floor
    end
  end

  def split(arr, split_point)
    split = determine_split_point(arr.length)
    left = arr[0...split]
    right = arr[split..-1]
    return left, right
  end

end
