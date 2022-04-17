unico a b = soma == 1
    where
        soma = sum $ [1 | x <- b, a == x]

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ unico a b
