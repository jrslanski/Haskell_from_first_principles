
in_range :: Integer -> Integer -> Integer -> Integer

in_range min max x = 
    x >= min && x <= max 

x :: Integer


in_range2 min max x =
    let in_lower_bound = min <= x
        in_upper_bound = max >= x
    in 
        in_lower_bound && in_upper_bound

in_range3 min max x = ilb && iub
    where
        ilb = min <= x 
        iub = max >= x 



 