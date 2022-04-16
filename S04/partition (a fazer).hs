{- splitints odd [1,2,3,4,5,6,7] == ([1,3,5,7],[2,4,6])
splitints (<5) [2,4,6,1,1,7] == ([2,4,1,1],[6,7])
-}

splitints :: [Int] -> ([Int],[Int])
splitints a = ([], [])

main :: IO ()
main = do
    a <- readLn :: IO [Int]
    print $ splitints a
