module Main where

import Test.Tasty
import Test.Tasty.HUnit
import FizzBuzz

fizzBuzzSuite :: TestTree
fizzBuzzSuite = testGroup "FizzBuzz tests"
                    [ testGroup "fizzbuzz" $
                        [ testCase "1 is one!" $ fizzbuzz 1 @?= "one!"
                        , testCase "2 is two!" $ fizzbuzz 2 @?= "two!"
                        ]
                        , testGroup "lessThan20" $
                        [ testCase "1 is one" $ lessThan20 1 @?= "one"
                        , testCase "2 os two" $ lessThan20 2 @?= "two"
                        ]
                    ]


main = defaultMain fizzBuzzSuite

-- module Main (main) where

-- main :: IO ()
-- main = putStrLn "Test suite not yet implemented."
