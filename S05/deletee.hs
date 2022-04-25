deletee :: Eq a => a -> [a] -> [a]
deletee x [] = []
deletee a (x:xs)
    | a == x = xs
    | otherwise = x : deletee a xs

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ deletee a b
