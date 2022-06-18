myfilter :: (a -> Bool) -> [a] -> [a]
myfilter _ [] = []
myfilter x [a] = [a | x a]
myfilter x (y : ys) = if x y then y : myfilter x ys else myfilter x ys

main :: IO ()
main = do
  print $ myfilter (> 5) [0 .. 10] == [6, 7, 8, 9, 10]
  print $ myfilter (odd) [0 .. 10] == [1, 3, 5, 7, 9]