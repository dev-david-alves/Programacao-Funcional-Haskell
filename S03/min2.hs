min2:: Int -> Int -> Int
min2 a b
    | a < b = a
    | otherwise = b

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ min2 a b
