module Main (someFunc, main) where

import System.Directory

someFunc :: IO ()
someFunc = do
  contents <- listDirectory "app"
  putStrLn (show contents)


main :: IO ()
main = putStrLn "Hello, Haskell!"

othermain = do
  putStrLn "Hello, everybody!"
  putStrLn ("Please look at my favorite odd numbers: " ++ show (filter odd [10..20]))