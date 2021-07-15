def minimumBribes(q)
  # Write your code here
  chaotic = false
  bribes = 0

  q.each_with_index do |elem, index|
    chaotic = true if elem - (index + 1) > 2

    j = elem - 2
    while j < index
      bribes += 1 if q[j] > elem
      j += 1
    end
  end

  if chaotic
    puts 'Too chaotic'
  else
    puts bribes - 1
  end
end

minimumBribes([1, 2, 5, 3, 7, 8, 6, 4])

# not optimized answer
# def minimumBribes(q)
#   # Write your code here
#   # sort the array in order to compare it with the array modified
#   sorted_arr = q.sort
#   # counter for the number of bribes
#   bribes = 0
#   # store string for conditional
#   chaos = ''
#
#   # check each element on the given array (modified)
#   q.each_with_index do |elem, index|
#     # if the element is the same on the sorted array at the same position go next
#     return puts 'Too chaotic' if elem - (index + 1) > 2
#
#     # if its different check the amount of bribes at that given moment
#     current_bribe = sorted_arr.index(elem) - index
#     # Get 'Too chaotic if it's greater than 2
#     #return puts 'Too chaotic' if current_bribe > 2
#
#     # remove and store the element from the sorted array
#     sliced_element = sorted_arr.slice!(sorted_arr.index(elem))
#
#     # insert it on the place of the original array
#     sorted_arr.insert(index, sliced_element)
#
#     # pass the bribes number to the accumulator
#     bribes += current_bribe
#     break if sorted_arr == q
#   end
#
#   # check what to print
#   if chaos.empty?
#     puts bribes
#   else
#     puts chaos
#   end
# end