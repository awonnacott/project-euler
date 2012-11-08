fib :: Integral a => a -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)
fibs :: [Int]
fibs = [fib x | x <- [1..]]
getUpTo :: Integral a => [a] -> a -> a -> a
getUpTo list1 x n = if (list1 !! n) < x then getUpTo list1 x (n+1) else n-1
relevantNumbers :: [Int]
relevantNumbers = [fibs !! x | x <- [1..(getUpTo fibs 4000000 0)], even x, even (fibs !! x)]
main :: IO ()
main = show .sum relevantNumbers
