module OtherLib(otherFunc) where

otherFunc :: String -> Int
otherFunc str = length str

othermain = do
  putStrLn "Hello, everybody!"
  putStrLn ("Please look at my favorite odd numbers: " ++ show (filter odd [10..20]))