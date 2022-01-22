func hour_to_time(hour):
    match hour:
        0:
            return "17:00"
        1:
            return "18:00"
        2:
            return "19:00"
        3:
            return "20:00"
        4:
            return "21:00"
        5:
            return "22:00"
        6:
            return "23:00"
        7:
            return "00:00"
        8:
            return "01:00"
        9:
            return "02:00"
        10:
            return "03:00"
        11:
            return "04:00"
        12:
            return "05:00"
        13:
            return "06:00"
        14:
            return "07:00"
        15:
            return "08:00"
        16:
            return "09:00"
        
func is_before_work(hour):
    return hour < 16
