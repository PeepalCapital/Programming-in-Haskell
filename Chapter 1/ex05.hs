{-

By replacing <= with < in the smaller definition will cause it go from an ordered list
to an ordered set. Here the ordering is qsort.

-}


qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
                where
                    smaller = [a | a <- xs, a < x]
                    larger = [b | b <- xs, b > x]


main :: IO ()
main = do
    let numbers = [2, 2, 3, 1, 1]
    putStrLn $ "Qsort: " ++ show (qsort numbers)