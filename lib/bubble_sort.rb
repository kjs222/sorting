class BubbleSort

  def sort(unsorted, prev=0, cur=1, length=unsorted.length)
    length = unsorted.length
    while length > 1
      while cur < length
        prev_val = unsorted[prev]
        cur_val = unsorted[cur]
        if prev_val > cur_val
          unsorted[prev] = cur_val
          unsorted[cur] = prev_val
        end
        prev += 1
        cur += 1
        unsorted
      end
      length = length-1
      prev = 0
      cur = 1
    end
    unsorted
  end

##works for 1 bubble
  # def sort(unsorted, prev=0, cur=1, length=unsorted.length)
  #     while cur < length
  #       prev_val = unsorted[prev]
  #       cur_val = unsorted[cur]
  #       if prev_val > cur_val
  #         unsorted[prev] = cur_val
  #         unsorted[cur] = prev_val
  #       end
  #       prev += 1
  #       cur += 1
  #       unsorted
  #   end
  #   unsorted
  # end




end
