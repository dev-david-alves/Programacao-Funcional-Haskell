elemento :: Int -> [a] -> a
elemento 0 b = head b
elemento a b = if a >= 0
               then elemento (a-1) (tail b)
               else elemento (a + length b) b

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ elemento a b
