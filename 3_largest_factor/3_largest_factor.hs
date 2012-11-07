factors :: Integer -> [Integer]
factors n = [x | x <- [1..n], (mod n x) == 0, n /= x]
prime :: Integer -> Bool
prime x = if factors x == [1] then True else False
primeFactors :: Integer -> [Integer]
primeFactors n = [x | x <- (factors n), prime x]
doProblem :: Integer -> Integer
doProblem x = if prime x then 1 else (last (primeFactors x))
main :: IO ()
main = putStrLn (show (doProblem 600851475143))

--factors i = [o | o <- [1..i], (mod i o) == 0, i /= o]
--primefactors i = [o | o <- (factors i), factors o == [1]]