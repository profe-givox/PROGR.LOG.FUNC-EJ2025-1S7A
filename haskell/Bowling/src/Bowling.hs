module Bowling (someFunc, toFrames, score) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

data Frame = Open Int Int 
            | Spare Int Int 
            | Strike Int Int 

-- data Frame = Open { pins1 :: Int
--                     , pins2 :: Int
--                     }
--                     | Spare { pins1 :: Int
--                     , bonus1 :: Int
--                     }
--                     | Strike { bonus1 :: Int
--                     , bonus2 :: Int
--                     }

toFrames :: [Int] -> [Frame]
score :: [Frame] -> Int

toFrames = undefined
score = undefined
