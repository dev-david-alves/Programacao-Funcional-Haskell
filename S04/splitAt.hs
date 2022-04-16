divide :: [a] -> Int -> ([a], [a])
divide a b = ([x | x <- take b a], [x | x <- drop b a])

main :: IO ()
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO Int
    print $ divide a b
