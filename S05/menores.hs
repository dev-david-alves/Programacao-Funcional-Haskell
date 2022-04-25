import Data.List
achaMaior :: Ord a => [a] -> a
achaMaior xs = foldl (\c b -> if c > b then c else b) (head xs) xs

removeMaior :: Ord a => [a] -> [a]
removeMaior xs = delete (achaMaior xs) xs

menores :: Ord a => Int -> [a] -> [a]
menores a b = if a < length b then menores a (removeMaior b) else b

main :: IO ()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO [Int]
    print $ menores a b
