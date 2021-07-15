def hourglassSum(arr)
  # Write your code here

  sum_arr = []
  arr.each_with_index do |row, row_index|
    next unless row_index <= 3

    row.each_with_index do |number, index|
      next unless index <= 3

      sum = number + row[index + 1] + row[index + 2] + arr[row_index + 1][index + 1] + arr[row_index + 2][index] + arr[row_index + 2][index + 1] + arr[row_index + 2][index + 2]
      sum_arr << sum
    end
  end
  sum_arr.max
end

p hourglassSum(
  [
    [3, 7, -3, 0, 1, 8],
    [1, -4, -7, -8, -6, 5],
    [-8, 1, 3, 3, 5, 7],
    [-2, 4, 3, 1, 2, 7],
    [2, 4, -5, 1, 8, 4],
    [5, -7, 6, 5, 2, 8]
  ])
