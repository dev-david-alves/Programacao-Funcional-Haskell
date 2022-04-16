intersec:: [Int] -> [Int] -> [Int]
intersec a b = [x | x <- a, x `elem` b]

main :: IO ()
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ intersec a b
