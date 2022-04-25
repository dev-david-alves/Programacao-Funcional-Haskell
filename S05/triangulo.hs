line :: (Num a, Enum a) => a -> [a]
line x = [k + 1,k+2..k + x]
    where k = sum [0..x - 1]

triangle :: (Eq a, Num a, Enum a) => a -> [[a]]
triangle 0 = []
triangle x = triangle (x - 1) ++ [line x]

main :: IO ()
main = do
    a <- readLn :: IO Int
    print $ triangle a
