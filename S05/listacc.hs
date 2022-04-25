listacc :: Num a => [a] -> [a]
listacc [] = []
listacc [x] = [x]
listacc a = listacc (init a) ++ [sum a]

main :: IO ()
main = do
    a <- readLn :: IO [Int]
    print $ listacc a
