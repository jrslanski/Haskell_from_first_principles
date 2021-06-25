fac n = 
    if n <= 1 then 
        1
    else 
        n * fac(n-1)

fac2 n 
    | n <= 1 = 1
    | otherwise = n * fac(n-1)


fac3 n = aux n 1 
    where 
        aux n acc
            | n <= 1 = acc 
            | otherwise = aux (n-1) (n*acc)