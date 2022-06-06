indexOf b a = if fst v then snd v else -1
   where 
      index val x = if not (fst val) then if x == a then (True, snd val) else (False, snd val + 1) else val
      v = foldl index (False, 0) b

main :: IO ()
main = do
    xs <- readLn :: IO [Int]
    y <- readLn :: IO Int
    print $ indexOf xs y