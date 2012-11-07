c2n :: Num a => Char -> a
c2n x = case x of
        '0' -> 0
        '1' -> 1
        '2' -> 2
        '3' -> 3
        '4' -> 4
        '5' -> 5
        '6' -> 6
        '7' -> 7
        '8' -> 8
        '9' -> 9
n :: Num a => a
n = 2 ^ 1000
nS :: String
nS = show n
nA :: Num a => [a]
nA = [c2n x | x <- nS]
a :: Num a => a
a = sum nA
main :: IO ()
main = putStrLn $ show $ sum nA