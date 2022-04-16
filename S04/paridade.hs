paridade :: [Bool] -> Bool
paridade a = odd $ sum [1 | x <- a, x]

main :: IO ()
main = do
    a <- readLn :: IO [Bool]
    print $ paridade a
