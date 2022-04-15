final :: Int -> [b] -> [b]
final a b = drop (length b - a) b

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ final a b
