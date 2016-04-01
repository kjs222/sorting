class MergeSort


  def sort(array)


  end


  def split_point(length)
    length/2.floor
  end

  def split(arr)
    split = split_point(arr.length)
    left = arr[0...split]
    right = arr[split..-1]
    return left, right
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


  def merge_split(left, right, merged=[])
    while !left.empty? && !right.empty?
      if left.first <= right.first
        merged.push(left.first)
        left.delete_at(0)
      else
        merged.push(right.first)
        right.delete_at(0)
      end
    end
    while !left.empty?
      merged.push(left.first)
      left.delete_at(0)
    end
    while !right.empty?
      merged.push(right.first)
      right.delete_at(0)
    end
    merged
  end



end


sorter = MergeSort.new
arr1 = [2, 2]
arr2 = [1, 4]
sorter.merge_split(arr1, arr2)
