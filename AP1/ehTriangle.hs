ehTriangle a b c = if a + b > c && a + c > b && b + c > a then True else False

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    print $ ehTriangle a b c