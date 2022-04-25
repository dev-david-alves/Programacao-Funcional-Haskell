line :: (Num a, Enum a) => a -> [a]
line x = [k + 1,k+2..k + x]
    where k = sum [0..x - 1]

main :: IO ()
main = do
    a <- readLn :: IO Int
    print $ line a
