somaImpares:: [Int] -> Int
somaImpares a = sum $ filter odd a

main :: IO ()
main = do
    a <- readLn :: IO [Int]
    print $ somaImpares a
