test :: Integer -> Integer -> Integer
test a b = a+b

fibonacci :: Integer -> Integer

fibonacci n 
    | n == 1 = 0
    | otherwise = aux 2 0 1 
        where 
            aux :: Integer -> Integer -> Integer -> Integer
            aux k acc1 acc2 
                | k == n = acc2
                | otherwise = aux (k+1) acc2 (acc1 + acc2)

is_prime :: Integer -> Bool

is_prime n 
    | n <= 1 = True
    | otherwise = aux (n) (n `quot` 2)
        where 
            aux n k
                | k == 1 = True
                | n `mod` k == 0 = False
                | otherwise = aux (n) (k-1)
    