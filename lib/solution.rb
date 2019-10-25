
def clock_angle(time)
    # code your solution here
    hour_minute = time.split(":")
    
    hour_degree = hour_minute[0].to_i * 30
    minute_degree = hour_minute[1].to_i * 0.5
    min_rev = hour_minute[1].to_i * 6

    angle = (hour_degree + minute_degree) - min_rev
    if angle >= 360
        angle = angle - 360.0
    elsif angle > 180
        angle = angle - 180
    end
    angle
end