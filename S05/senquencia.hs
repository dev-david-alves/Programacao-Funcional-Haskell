sequencia :: (Eq t, Num t, Num a) => t -> a -> [a]
sequencia 0 _ = []
sequencia a b = [b] ++ sequencia (a - 1) (b+1)

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    print $ sequencia a b
