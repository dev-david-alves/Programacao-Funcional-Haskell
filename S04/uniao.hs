uniao:: [Int] -> [Int] -> [Int]
uniao a b = a ++ [x | x <- b, x `notElem` a]

main :: IO ()
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ uniao a b
