factors :: Integer -> [Integer]
factors n = [x | x <- [1..n], (mod n x) == 0, n /= x]
prime :: Integer -> Bool
prime x = if factors x == [1] then True else False
primes :: [Integer]
primes = [x | x <- [1..], prime x]
main :: IO ()
main = putStrLn (show (primes !! 10001))