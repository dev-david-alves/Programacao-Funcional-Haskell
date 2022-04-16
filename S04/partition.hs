{- splitints odd [1,2,3,4,5,6,7] == ([1,3,5,7],[2,4,6])
splitints (<5) [2,4,6,1,1,7] == ([2,4,1,1],[6,7])
-}

splitintsOdd :: [Int] -> ([Int],[Int])
splitintsOdd a = ([x | x <- a, odd x], [x | x <- a, even x])

splitintsLessThan5 :: [Int] -> ([Int],[Int])
splitintsLessThan5 a = ([x | x <- a, x <= 5], [x | x <- a, x > 5])


main :: IO ()
main = do
    a <- readLn :: IO [Int]
    print $ splitintsOdd a
    print $ splitintsLessThan5 a
