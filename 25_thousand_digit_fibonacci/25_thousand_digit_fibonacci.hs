fibs = 1:1:(zipWith (+) (tail fibs) fibs)
main = print . head $ filter (> 10^1000)  fibs