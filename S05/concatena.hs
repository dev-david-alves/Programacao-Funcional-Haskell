concatena :: [a] -> [a] -> [a]
concatena [] [] = []
concatena [] (y:ys) = y : concatena [] ys   
concatena (x:xs) b = x : concatena xs b 

main :: IO ()
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ concatena a b
