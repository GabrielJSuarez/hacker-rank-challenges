def countingValleys(_steps, path)
  # Write your code here
  current_sea_level = 0
  prev_sea_level = 0
  valleys_traversed = 0

  path.each_char do |step|
    if step == 'D'
      prev_sea_level = current_sea_level
      current_sea_level -= 1
    elsif step == 'U'
      prev_sea_level = current_sea_level
      current_sea_level += 1
      valleys_traversed += 1 if current_sea_level >= 0 && prev_sea_level < 0
    end
  end
  valleys_traversed
end