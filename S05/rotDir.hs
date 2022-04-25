rotDir :: (Eq t, Num t) => t -> [a] -> [a]
rotDir 0 b = b
rotDir a b = rotDir (a-1) ([last b] ++ init b)

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- getLine
    print $ rotDir a b
