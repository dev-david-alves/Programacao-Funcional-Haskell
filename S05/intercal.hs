intercal :: [a] -> [a] -> [a]
intercal [] [] = []
intercal a [] = a
intercal [] b = b
intercal a b = [head a, head b] ++ intercal (tail a) (tail b)

main :: IO ()
main = do
    a <- readLn :: IO [Int]
    b <- readLn :: IO [Int]
    print $ intercal a b
