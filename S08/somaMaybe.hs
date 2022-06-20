import Data.Maybe

somaMaybe :: Maybe Int -> Maybe Int -> Maybe Int
somaMaybe Nothing Nothing = Nothing
somaMaybe (Just x) Nothing = Just x
somaMaybe Nothing (Just y) = Just y
somaMaybe (Just x) (Just y) = Just (x + y)