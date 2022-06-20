restos :: Integral a => a -> a -> [a]
restos 0 b = []
restos a b = (a `mod` b) : restos (a `div` b) b

base :: Int -> Int -> [Char]
base a b = foldl (\x y -> (text !! y) : x) [] $ restos a b
  where
    text = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ"

main :: IO ()
main = do
  a <- readLn :: IO Int
  b <- readLn :: IO Int
  print $ base a b
