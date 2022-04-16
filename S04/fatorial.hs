fatorial:: Int -> Int
fatorial 0 = 1
fatorial a = a * fatorial(a-1)

main :: IO ()
main = do
    a <- readLn :: IO Int
    print $ fatorial a
