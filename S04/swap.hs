
indiceValido:: Int -> [Int] -> Bool
indiceValido i a = if i < 0 || i >= length a then False else True
swap:: [Int] -> Int -> Int -> [Int]

swap a b c = if indiceValido b a && indiceValido c a 
             then esquerda ++ elem1 ++ meio ++ elem2 ++ direita
             else a
             where
               esquerda = take b a
               elem1 = [a !! c]
               meio = drop (b + 1) $ take (c) a
               elem2 = [a !! b]
               direita = drop (c+1) a

main :: IO ()
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ swap a b c
