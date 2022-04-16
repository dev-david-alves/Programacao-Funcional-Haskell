sublist:: Int -> Int -> [Int] -> [Int]
sublist a b c = drop nA $ take nB c
    where nA = if a >= 0 then a else length c + a
          nB = if b >= 0 then b else length c + b

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO [Int]
    print $ sublist a b c
