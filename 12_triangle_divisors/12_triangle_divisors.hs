factors :: Integral a => a -> [a]
factors n = [x | x <- [1..n], (mod n x) == 0, n /= x]
howManyFactors :: Integral a => a -> Int
howManyFactors x = length (factors x)
triangle :: Integral a => a -> a
triangle n = if n == 0 then n else n + triangle (n - 1)
triangles :: Integral a => [a]
triangles = [triangle x | x <- [1..]]
getFirstPast :: Integral a => (a -> Int) -> [a] -> Int -> Int -> Int
getFirstPast f l x i = if f (l !! i) > x then i else getFirstPast f l x (i + 1)
trianglePast :: Integral a => a
trianglePast = triangles !! (getFirstPast (howManyFactors) triangles 500 0)
main :: IO ()
main = print trianglePast