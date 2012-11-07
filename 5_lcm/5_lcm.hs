factorUpTo :: Integer -> Integer -> Bool
factorUpTo maxFactor relativePrime = if relativePrime <= maxFactor then False else and [(mod relativePrime factor) == 0 | factor <- [1..maxFactor]]
factorsUpTo :: Integer -> [Integer]
factorsUpTo maxFactor = [x | x <- [1..], factorUpTo maxFactor x]
main :: IO ()
main = putStrLn (show (head (factorsUpTo 20)))