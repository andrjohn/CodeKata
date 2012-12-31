
NOT_FOUND = -1

def chop(match, ordered_array)

  case ordered_array.size
  when 0; return NOT_FOUND
  when 1; return (match == ordered_array[0] ? 0 : NOT_FOUND)
  end

  middle = ordered_array.size / 2

  if ordered_array[middle] == match
    middle

  elsif match < ordered_array[middle]
    chop(match, ordered_array[0..middle-1])

  else
    start, finish = middle + 1, ordered_array.size
    top_result    = chop(match, ordered_array[start..finish])

    top_result == NOT_FOUND ? NOT_FOUND : start + top_result
  end

end
