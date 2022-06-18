mymap :: (a -> b) -> [a] -> [b]
mymap = map

main :: IO ()
main = do
  print $ mymap (+ 1) [1, 2, 3] == [2, 3, 4]
  print $ mymap (odd) [6, 2, 1] == [False, False, True]