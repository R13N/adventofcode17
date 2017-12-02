module Main where

import Days.Day1
import System.Environment

main :: IO ()
main = do
        args <- getArgs
        case args of
            (a:as)   -> putStrLn $ day a as
            _        -> putStrLn "Wrong number of args"

day :: String -> [String] -> String
day "1.1" = show . solveFirstCaptcha . head
day "1.2" = show . solveSecondCaptcha . head

