-- here we use the $ function instead of the parenthesis
-- ($) :: (a -> b) -> a -> b
sayHello :: String -> IO ()
sayHello x = putStrLn $ "Hello, " ++ x ++ "!"


sayHello' :: String -> IO ()
sayHello' x = putStrLn ("Hi " ++ x ++ "!")
