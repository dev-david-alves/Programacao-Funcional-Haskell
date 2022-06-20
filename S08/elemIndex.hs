myelemIndex :: (Num a1, Enum a1, Eq a2) => a2 -> [a2] -> Maybe a1
myelemIndex a b = if not (null elem) then head elem else Nothing
  where
    elem = [Just c | (c, d) <- zip [0 ..] b, d == a]

main :: IO ()
main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ myelemIndex a b