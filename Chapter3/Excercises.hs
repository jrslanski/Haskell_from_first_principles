
module Reverse where

rvrs :: String -> String

rvrs (x : xs) =  
    aux (x:xs) "" ""
        where 
            aux (x1:xs1) accList accWord
                | x1 == ' ' = aux (xs1) (accWord ++ " " ++ accList) "" 
                | xs1 == [] = (accWord ++ [x1]) ++ " " ++ accList
                | otherwise = aux xs1 accList (accWord ++ [x1])


rvrs2 :: String -> String

rvrs2 phrase = 
    unwords $ reverse $ words phrase


map2 :: (a -> b) -> [a] -> [b]

map2 f [] = []
map2 f (x:xs) = [(f x)] ++ (map2 f xs)


sum10 x = x + 10

filter2 :: (a -> Bool) -> [a] -> [a]
filter2 f [] = []
filter2 f (x:xs) 
    | f x = x : (filter2 f xs)
    | otherwise = filter2 f xs 

isGreaterThan20 x 
    | x <= 20 = False 
    | otherwise = True