reverso :: [a] -> [a]
reverso [] = []
reverso a = x : reverso xs
    where x = last a
          xs = init a

main :: IO ()
main = do
    a <- readLn :: IO [Int]
    print $ reverso a
