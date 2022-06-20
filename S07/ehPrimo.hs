ehPrimo :: Integral a => a -> Bool
ehPrimo a = foldl myfunc True [2 .. a - 1]
  where
    myfunc x y = x && a `mod` y /= 0

main :: IO ()
main = do
  a <- readLn :: IO Int
  print $ ehPrimo a
