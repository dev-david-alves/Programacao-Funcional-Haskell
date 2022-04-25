rotEsq :: (Eq t, Num t) => t -> [a] -> [a]
rotEsq 0 b = b
rotEsq a b = rotEsq (a-1) (tail b ++ [head b])

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- getLine
    print $ rotEsq a b
