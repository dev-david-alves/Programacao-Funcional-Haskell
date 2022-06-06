ehPoligono x = if sum [1 | y <- x, y < (sum x) - y] == length x then True else False

main :: IO ()
main = do
    xs <- readLn :: IO [Int]
    print $ ehPoligono xs