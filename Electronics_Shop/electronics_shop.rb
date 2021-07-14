def getMoneySpent(keyboards, drives, b)
  prices = []
  keyboards.sort.reverse.each do |keyboard_price|
    next if keyboard_price >= b

    drives.sort.each do |drive_price|
      price = drive_price + keyboard_price
      next if price > b

      prices << price
    end
  end
  prices.empty? ? -1 : prices.max
end

b = 60
keyboards = [40, 50, 60]
drives = [5, 8, 12]

puts getMoneySpent(keyboards, drives, b)

puts [].empty? prices.max