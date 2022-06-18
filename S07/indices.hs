indices :: (Num a1, Enum a1, Eq a2) => a2 -> [a2] -> [a1]
indices a b = [snd x | x <- zip b [0 ..], fst x == a]

main :: IO ()
main = do
  a <- readLn :: IO Int
  b <- readLn :: IO [Int]
  print $ indices a b
