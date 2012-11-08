factors :: Integral a => a -> [Int]
factors n = [x | x <- [1..n], (mod n x) == 0, n /= x]
prime :: Integral a => a -> Bool
prime x = if factors x == [1] then True else False
primes :: [Int]
primes = [x | x <- [1..], prime x]
main :: IO ()
main = print . primes !! 10001