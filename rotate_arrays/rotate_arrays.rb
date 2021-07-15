def rotLeft(a, d)
  # Write your code here
  counter = d
  array = a.dup

  while counter.positive?
    element = array.shift
    array << element
    counter -= 1
  end
  array
end

p rotLeft([1, 2, 3, 4, 5], 4)
