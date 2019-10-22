def clock_angle(time)
    time_array = time.split(":")
    hour_deg = time_array[0].to_i * 30
    min_deg = time_array[1].to_i * 0.5
    min_rev = time_array[1].to_i * 6
    degs = (hour_deg + min_deg) - min_rev
    
    if degs >= 360
      degs = degs - 360.0
    end
    if degs > 180
      degs = degs - 180
    end
    degs
  end