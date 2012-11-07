fib :: Integer -> Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)
fibs :: [Int]
fibs = [fib x | x <- [1..]]
getUpTo :: [Int] -> Int -> Int -> Int
getUpTo list1 x n = if (list1 !! n) < x then getUpTo list1 x (n+1) else n-1
relevantNumbers :: [Int]
relevantNumbers = [fibs !! x | x <- [1..(getUpTo fibs 4000000 0)], even x, even (fibs !! x)]
main :: IO ()
main = putStrLn (show (sum relevantNumbers))
