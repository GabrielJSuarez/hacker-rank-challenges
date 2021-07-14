def pageCount(n, p)
  front = p / 2
  back = n / 2 - p / 2
  front > back ? back : front
end

puts pageCount(6, 1)


