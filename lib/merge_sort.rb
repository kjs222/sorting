module SortingSuite

  class MergeSort

    def sort(array, merged = [])
      if array.size <= 1 || array.nil?
        return array
      else
        left, right = split(array)
        if left.size <= 2 && right.size <= 2
          right = sort_split(right)
          left = sort_split(left)
          merged = merged + merge(left, right)
        else
          merge(sort(left, merged), sort(right, merged))
        end
      end
    end

    def merge(left, right, merged=[])
      while !left.empty? && !right.empty?
        if left.first <= right.first
          push_lowest(merged, left)
        else
          push_lowest(merged, right)
        end
      end
      while !left.empty?
        push_lowest(merged, left)
      end
      while !right.empty?
        push_lowest(merged, right)
      end
      merged
    end

    def push_lowest(merged,lowest)
      merged.push(lowest.first)
      lowest.delete_at(0)
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

  end

end
