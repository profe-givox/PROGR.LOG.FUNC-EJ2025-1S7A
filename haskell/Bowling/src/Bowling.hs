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

toFrames :: [Int] -> Maybe [Frame]
score :: [Frame] -> Int

--toFrames pins = replicate 10 (Open 0 0)
toFrames pins = go 1 pins
    where
    go 10 [x, y]  
        | x + y < 10 = Just [Open x y]
        | otherwise = Nothing
    go 10 [x, y, z]
        | x == 10 = Just [Strike y z]
        | x + y == 10 = Just [Spare x z]
        | otherwise = Nothing
    go n (x:y:z:ys)
        | x == 10 = fmap (Strike y z :) $ go (n+1) (y:z:ys)
        | x + y == 10 = fmap (Spare x z :) $  go (n+1) (z:ys)
        | x + y < 10 = fmap (Open x y :) $ go (n+1) (z:ys)
        | otherwise = Nothing
    go _ _ = Nothing


frameScore :: Frame-> Int
frameScore (Open x y) = x + y
frameScore (Spare _ y) = 10 + y
frameScore (Strike x y) = 10 + x + y

score = undefined
