import Data.List 

asc :: Int -> Int -> [Int]

asc n m 
    | m < n = []
    | m == n = [m]
    | m > n = n : asc (n+1) m

a = head [1,12,13,41]
b = tail [1,2,3,4,5]



list_comprehension1 = [ 2*x | x <- [1,2,3], x > 1]

list_comprehension2 = [ (x, y) | x <- [1,2,3], y <- ['a','b']]

sum1 :: [Int] -> Int
sum1 [] = 0
sum1 (x:xs) = x + sum xs

evens :: [Int] -> [Int]
evens [] = []
evens (x: xs)
    | mod x 2 == 0 = x : evens xs 
    | otherwise = evens xs

