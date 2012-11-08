factors :: Integral a => a -> [a]
factors n = [x | x <- [1..n], (mod n x) == 0, n /= x]
prime :: Integral a => a -> Bool
prime x = if factors x == [1] then True else False
primeFactors :: Integral a => a -> [a]
primeFactors n = [x | x <- (factors n), prime x]
doProblem :: Integral a => a -> a
doProblem x = if prime x then 1 else (last . primeFactors x)
main :: IO ()
main = print . doProblem 600851475143