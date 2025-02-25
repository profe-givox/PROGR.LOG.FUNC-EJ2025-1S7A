module Main (main) where

-- main :: IO ()
-- main = putStrLn "Test suite not yet implemented."

import Test.Tasty
import Test.Tasty.HUnit
import Bowling

bowlingSuite :: TestTree
bowlingSuite = testGroup "Bowling tests"
                    [ testGroup "toFrames"
                        [ testCase "zeros are zeros" $
                            toFrames (replicate 20 0) @?= replicate 10 (Open 0 0)
                        ]
                    ]

main = defaultMain bowlingSuite
