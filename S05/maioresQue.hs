maioresQue :: Ord t => t -> [t] -> [t]
maioresQue a [] = []
maioresQue a (x:xs) = if x > a then x : maioresQue a xs else maioresQue a xs 

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ maioresQue a b
