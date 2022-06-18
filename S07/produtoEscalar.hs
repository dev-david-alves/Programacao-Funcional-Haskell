produtoEscalar :: Num a => [a] -> [a] -> a
produtoEscalar a b = sum [x * y | (x, y) <- zip a b]

main :: IO ()
main = do
  a <- readLn :: IO [Int]
  b <- readLn :: IO [Int]
  print $ produtoEscalar a b
