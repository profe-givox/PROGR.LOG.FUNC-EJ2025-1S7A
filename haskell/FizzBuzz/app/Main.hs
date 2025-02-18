module Main where

import qualified FizzBuzz (someFunc)

main :: IO ()
main = do
  putStrLn "Hello, Haskell!"
  FizzBuzz.someFunc
