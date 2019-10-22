def clock_angle(time)
    time_array = time.split(":")
    hour_degree = time_array[0].to_i * 30
    min_degree = time_array[1].to_i * 0.5
    min_rev = time_array[1].to_i * 6
    degrees = (hour_degree + min_degree) - min_rev
    
    if degrees >= 360
        degrees -= 360.0
    end
    if degrees > 180
        degrees = degrees - 180
    end
    degrees
end