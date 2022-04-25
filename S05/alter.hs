alter :: (Eq a, Num a) => a -> [a]
alter 0 = []
alter a = alter(a - 1) ++ [a, -a]

main :: IO ()
main = do
    a <- readLn :: IO Int
    print $ alter a
