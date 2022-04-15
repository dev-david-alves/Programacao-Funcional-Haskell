interior:: [int] -> [int]
interior xs = tail $ init xs

main :: IO ()
main = do
    a <- readLn :: IO [Int]
    print $ interior a
