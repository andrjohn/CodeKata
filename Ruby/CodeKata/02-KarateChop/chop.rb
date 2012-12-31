
def chop(match, ordered_array)

  return -1                                   if ordered_array.size == 0
  return (match == ordered_array[0] ? 0 : -1) if ordered_array.size == 1

  middle = ordered_array.size / 2

  case
  when ordered_array[middle] == match
    middle

  when ordered_array[middle] > match
    chop(match, ordered_array[0..middle-1])

  else
    top_first  = middle + 1
    top_last   = ordered_array.size
    top_result = chop(match, ordered_array[top_first..top_last])

    top_result == -1 ? -1 : top_first + top_result
  end

end
