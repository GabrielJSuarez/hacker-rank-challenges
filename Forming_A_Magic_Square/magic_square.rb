def formingMagicSquare(s)
  # Write your code here
  squares = [
    [8, 1, 6, 3, 5, 7, 4, 9, 2],
    [4, 3, 8, 9, 5, 1, 2, 7, 6],
    [2, 9, 4, 7, 5, 3, 6, 1, 8],
    [6, 7, 2, 1, 5, 9, 8, 3, 4],
    [6, 1, 8, 7, 5, 3, 2, 9, 4],
    [8, 3, 4, 1, 5, 9, 6, 7, 2],
    [4, 9, 2, 3, 5, 7, 8, 1, 6],
    [2, 7, 6, 9, 5, 1, 4, 3, 8]
  ]

  flat_square = s.flatten

  cost = Float::INFINITY

  squares.each do |square|
    curr_cost = 0
    flat_square.each_with_index do |number, index|
      curr_cost += (square[index] - number).abs
    end
    (cost = curr_cost) if curr_cost < cost
  end

  cost
end

puts formingMagicSquare([[5, 3, 4], [1, 5, 8], [6, 4, 2]])
