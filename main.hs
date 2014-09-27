-- tutorial: http://en.wikibooks.org/wiki/Write_Yourself_a_Scheme_in_48_Hours

module Main where
import System.Environment

main :: IO ()
main = do
    args <- getArgs
    putStrLn (addStringNums args)
    putStrLn ("Please type your name: ")
    line <- getLine
    putStrLn ("Hello, " ++ line)

addStringNums :: [String] -> String
addStringNums = show . sum . map (\s -> read s :: Int)
