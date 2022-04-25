quadperf :: (Enum a, Eq a, Num a) => a -> Bool
quadperf a = foldl mult False [1..a]
    where mult acc x = acc || x * x == a

main :: IO ()
main = do
    a <- readLn :: IO Int
    print $ quadperf a
