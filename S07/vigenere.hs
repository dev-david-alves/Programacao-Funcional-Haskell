import Data.List (elemIndex)
import Data.Maybe (fromJust)

vigenere :: [Char] -> [Char] -> [Char]
vigenere txt key = [fromJust $ lookup ((fromJust (func a) + fromJust (func b)) `mod` 26) letToInt | (a, b) <- zip txt fullKey]
  where
    func k = elemIndex k ['A' .. 'Z']
    letToInt = take 26 $ zip [0 ..] ['A' ..]
    fullKey = take (length txt) $ concat $ replicate (length txt) key

main :: IO ()
main = do
  print $ vigenere "ATACARBASESUL" "LIMAO" == "LBMCOCJMSSDCX"
  print $ vigenere "ABACATE" "A" == "ABACATE"
  print $ vigenere "ABACATE" "B" == "BCBDBUF"
  print $ vigenere "ABACATE" "AB" == "ACADAUE"