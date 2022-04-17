{- splitints odd [1,2,3,4,5,6,7] == ([1,3,5,7],[2,4,6])
splitints (<5) [2,4,6,1,1,7] == ([2,4,1,1],[6,7])
-}

splitints :: (a -> Bool) -> [a] -> ([a], [a])
splitints function a = (filter function a, filter (not . function) a)

main :: IO ()
main = do
    a <- readLn :: IO [Int]
    print $ splitints odd a
