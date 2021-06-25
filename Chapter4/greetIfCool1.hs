module GreetIfCool1 where 


greetIfCool :: String -> IO () 

greetIfCool coolness = 
    if cool 
        then putStrLn "eeyyyy. What's shaking?"
    else 
        putStrLn "pshhh."
    where 
        cool = 
            coolness == "downright frosty yo"