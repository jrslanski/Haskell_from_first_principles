

isPalindrome :: String -> Bool

isPalindrome "" = True
isPalindrome s = (==) s $ reverse s 

myAbs :: Integer -> Integer 
myAbs n 
    | n < 0 = -n 
    | otherwise = n 

