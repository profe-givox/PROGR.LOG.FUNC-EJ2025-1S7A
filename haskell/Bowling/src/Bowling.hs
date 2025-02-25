module Bowling (someFunc) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

data Frame = Open Int Int 
            | Spare Int Int 
            | Strike Int Int 

toFrames :: [Int] -> [Frame]
score :: [Frame] -> Int



