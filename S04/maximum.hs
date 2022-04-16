maior :: [Int] -> Int
maior [] = minBound :: Int
maior [a] = a
maior (a:b) = if a > maior b then a else maior b

main :: IO ()
main = do
    a <- readLn :: IO [Int]
    print $ maior a
