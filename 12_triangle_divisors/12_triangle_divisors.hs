factors :: Integer -> [Integer]
factors n = [x | x <- [1..n], (mod n x) == 0, n /= x]
howManyFactors :: Integer -> Int
howManyFactors x = length (factors x)
triangle :: Integer -> Integer
triangle n = if n == 0 then n else n + triangle (n - 1)
triangles :: [Integer]
triangles = [triangle x | x <- [1..]]
getFirstPast :: (Integer -> Int) -> [Integer] -> Int -> Int -> Int
getFirstPast f l x i = if f (l !! i) > x then i else getFirstPast f l x (i + 1)
trianglePast :: Integer
trianglePast = triangles !! (getFirstPast (howManyFactors) triangles 500 0)
main :: IO ()
main = putStrLn (show trianglePast)