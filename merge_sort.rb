def merge_sort(list)
  return list if list.length < 2
  mid = list.length/2.floor
  left = list.slice(0,mid)
  right = list.slice(mid,list.length)
  merge(merge_sort(left),merge_sort(right))
end

def merge(left_arr, right_arr)
  result = []
  i_left = 0
  i_right = 0
  k = 0
  while i_left < left_arr.length && i_right < right_arr.length
    if left_arr[i_left] < right_arr[i_right]
      result.push(left_arr[i_left])
      i_left+=1
    else
      result.push(right_arr[i_right])
      i_right+=1
    end
    k += 1
  end

  # if there are some remaining in left arr
  while i_left < left_arr.length
    result[k] = left_arr[i_left]
    i_left += 1
    k += 1
  end
  # if there are some remaining in right arr
  while i_right < right_arr.length
    result[k] = right_arr[i_right]
    i_right += 1
    k += 1
  end
  result
end




