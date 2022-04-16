pertence :: Int -> [Int] -> Bool
pertence a [] = False
pertence a (x:xs) = if a == x then True else pertence a xs

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ pertence a b
