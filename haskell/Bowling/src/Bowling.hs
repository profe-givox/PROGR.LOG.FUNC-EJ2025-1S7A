module Bowling (someFunc, toFrames, score, Frame(Open,Spare,Strike)) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

data Frame = Open Int Int
            | Spare Int Int 
            | Strike Int Int 
            deriving (Eq, Show)

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

toFrames pins = replicate 10 (Open 0 0)
score = undefined
