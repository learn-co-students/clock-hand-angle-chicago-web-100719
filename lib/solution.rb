def clock_angle(time)
  time_array = time.split(":")
  hour_deg = time_array[0].to_i * 30
  min_deg = time_array[1].to_i * 0.5
  min_rev = time_array[1].to_i * 6
  total = (hour_deg + min_deg) - min_rev

  if total >= 360
    total -= 360.0
  end

  if total > 180
    total -= 180
  end

  return total
end
