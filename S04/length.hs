total :: [Int] -> Int
total a = sum [1 | x <- a] 

main :: IO ()
main = do
    a <- readLn :: IO [Int]
    print $ total a
