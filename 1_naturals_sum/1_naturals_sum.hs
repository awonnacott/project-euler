relevantNumbers :: Integral a => [a]
relevantNumbers = [x | x <- [1..999], (mod x 3) == 0 || (mod x 5) == 0]
main :: IO ()
main = print. sum relevantNumbers