products :: Integral a => [a]
products = [x * y | x <- [100..999], y <- [100..999]]
isPalindrome :: Eq a => [a] -> Bool
isPalindrome x = (reverse x) == x
palindromeProducts :: Integral a => [a]
palindromeProducts = [x | x <- products, isPalindrome . show x]
main :: IO ()
main = print . maximum palindromeProducts