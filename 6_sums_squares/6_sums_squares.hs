square :: Num a => a -> a
square x = x*x
doProblem :: Num a => [a] -> a
doProblem x = sum (map square x) - square (sum x)
main :: IO ()
main = do
        putStr "Enter a number: "
        nStr <- getLine
        putStrLn (show (doProblem (read nStr)))