sayHello :: String -> IO ()
sayHello x = putStrLn $ "Hello, " ++ x ++ "!"

sayHello' :: String -> IO ()
sayHello' x = putStrLn ("Hi " ++ x ++ "!")
