fst3 :: (a, b, c) -> a
fst3 (x, y, z) = x
snd3 :: (a, b, c) -> b
snd3 (x, y, z) = y
lst3 :: (a, b, c) -> c
lst3 (x, y, z) = z
triples :: Integral a => [(a, a, a)]
triples = [(a, b, c) | a <- [1..], b <- [1..], c <- [1..], a^2+b^2==c^2]
triple :: Integral a => (a, a, a)
triple = head [n | n <- triples, (fst3 n)+(snd3 n)+(lst3 n) == 1000]
main :: IO ()
main = print $ (fst3 triple)*(snd3 triple)*(lst3 triple)