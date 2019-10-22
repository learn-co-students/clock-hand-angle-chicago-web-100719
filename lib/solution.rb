def clock_angle(time)
    # code your solution here
    hour_minute = time.split(":").map { |s| s.to_f }
    
    hour_degree = (hour_minute[0] * 30) + (hour_minute[1] * 0.5)
    minute_degree = hour_minute[1] * 6

    angle_difference = (hour_degree - minute_degree).abs
    if angle_difference > 180
        result = 360 - angle_difference
    else
        result = angle_difference
    end
    p result 
end