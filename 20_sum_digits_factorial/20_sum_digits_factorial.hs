import Data.Char
fac :: (Enum a, Num a) => a -> a
fac n = product [1..n]
main :: IO()
main = print . sum . (map (subtract 48)) . (map ord) . show $ fac 20