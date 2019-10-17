def map(array)
  new = []
  i = 0
  while i < array.length do
     new.push(yield(array[i]))
     i += 1
  end
  return new
end

def reduce(array, starting_point = nil)
  if starting_point
    rt = starting_point
    i = 0
  else
    rt = array[0]
    i = 1
  end
  while i < array.length
    rt = yield(rt, array[i])
    i += 1
  end
  rt
end
