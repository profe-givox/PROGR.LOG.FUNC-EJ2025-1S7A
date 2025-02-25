module Main where

import qualified Bowling (someFunc)

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  Bowling.someFunc
