frequencia :: (Num p, Eq t) => t -> [t] -> p
frequencia a [] = 0
frequencia a (x:xs) 
        | a == x = 1 + frequencia a xs
        | otherwise = frequencia a xs 

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ frequencia a b
