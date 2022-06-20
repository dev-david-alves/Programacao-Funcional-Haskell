import Data.Maybe

filterMaybe :: [Maybe Int] -> [Int]
filterMaybe vet = map fromJust $ filter (/= Nothing) vet

countNothing :: [Maybe Int] -> Int
countNothing = length . filter (== Nothing)