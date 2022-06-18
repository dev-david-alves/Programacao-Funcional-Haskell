mynub :: [Int] -> [Int]
mynub = foldl (\xs y -> if y `notElem` xs then xs ++ [y] else xs) []

main :: IO ()
main = do
  a <- readLn :: IO [Int]
  print $ mynub a