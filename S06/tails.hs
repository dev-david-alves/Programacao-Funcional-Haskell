mytails :: [a] -> [[a]]
mytails [] = [[]]
mytails a = a : mytails (tail a)

main :: IO ()
main = do
  a <- readLn :: IO [Int]
  print $ mytails a