def catAndMouse(x, y, z)
  units_from_mouse_a = z > x ? (z - x) : ((z - x) * -1)
  units_from_mouse_b = z > y ? (z - y) : ((z - y) * -1)

  if units_from_mouse_a == units_from_mouse_b
    'Mouse C'
  elsif units_from_mouse_a > units_from_mouse_b
    'Cat B'
  else
    'Cat A'
  end
end
