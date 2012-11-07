products :: [Integer]
products = [x * y | x <- [100..999], y <- [100..999]]
isPalindrome :: Eq a => [a] -> Bool
isPalindrome x = (reverse x) == x
palindromeProducts :: [Integer]
palindromeProducts = [x | x <- products, isPalindrome (show x)]
main :: IO ()
main = putStrLn (show (maximum palindromeProducts))