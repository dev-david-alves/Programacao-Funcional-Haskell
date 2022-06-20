reduce :: Integral b => (b, b) -> (b, b)
reduce (a, b) = (a `div` mdcAB, b `div` mdcAB)
  where
    mdcAB = mdc a b

mdc :: Integral t => t -> t -> t
mdc a 0 = a
mdc a b = mdc b (a `mod` b)

main :: IO ()
main = do
  a <- readLn :: IO Int
  b <- readLn :: IO Int
  print $ reduce (a, b)
