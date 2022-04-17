myreplicate :: Int -> a -> [a]
myreplicate 0 x = []
myreplicate n x = x : myreplicate (n-1) x

main :: IO ()
main = do
    print $ myreplicate 4 0 == [0, 0, 0, 0]
    print $ myreplicate 2 True == [True, True]
    print $ myreplicate 3 "banana" == ["banana", "banana", "banana"]