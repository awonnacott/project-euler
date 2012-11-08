factorUpTo :: Integral a => a -> a -> Bool
factorUpTo maxFactor relativePrime = if relativePrime <= maxFactor then False else and [(mod relativePrime factor) == 0 | factor <- [1..maxFactor]]
factorsUpTo :: Integral a => a -> [a]
factorsUpTo maxFactor = [x | x <- [1..], factorUpTo maxFactor x]
main :: IO ()
main = print . head . factorsUpTo 20