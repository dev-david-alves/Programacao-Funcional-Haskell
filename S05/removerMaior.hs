import Data.List

achaMaior :: Ord a => [a] -> a
achaMaior xs = foldl (\c b -> if c > b then c else b) (head xs) xs

removerMaior :: Ord a => [a] -> [a]
removerMaior xs = delete (achaMaior xs) xs

main :: IO ()
main = do
    a <- readLn :: IO [Int]
    print $ removerMaior a
