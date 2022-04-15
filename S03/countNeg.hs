countNeg:: [Int] -> Int
countNeg xs = length [x | x <- xs, x < 0]

main :: IO ()
main = do
    a <- readLn :: IO [Int]
    print $ countNeg a
