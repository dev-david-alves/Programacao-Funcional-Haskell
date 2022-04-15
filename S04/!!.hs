elemento :: Int -> [a] -> a
elemento a b
    | a >= 0 = head $ drop (a) b
    | otherwise = head $ drop (length b + a) b

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ elemento a b
