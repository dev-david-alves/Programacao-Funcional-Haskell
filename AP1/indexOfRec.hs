index [] a = [-1]
index (x:xs) a = 1 : if x == a then [] else index xs a

indexOf b a = if last v == -1 then -1 else sum v - 1
   where v = index b a

main :: IO ()
main = do
    xs <- readLn :: IO [Int]
    y <- readLn :: IO Int
    print $ indexOf xs y