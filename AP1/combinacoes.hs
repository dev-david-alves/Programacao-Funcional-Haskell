import Data.List

ehTriangulo a b c = if a + b > c && a + c > b && b + c > a then True else False

g start end xs = drop start $ take (length xs - end) xs

combi_ xs = [(a,b,c) | a <- g 0 2 xs, b <- g 1 1 xs, c <- g 2 0 xs, a < b && b < c]

combi xs = [(a,b,c) | (a,b,c) <- v, ehTriangulo a b c]
   where v = combi_ k
         k = sort xs

main :: IO ()
main = do
    xs <- readLn :: IO [Int]
    print $ combi xs