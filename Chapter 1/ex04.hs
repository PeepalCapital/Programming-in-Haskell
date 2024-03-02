
revqsort :: Ord a => [a] -> [a]
revqsort [] = []
revqsort (n:ns) = revqsort larger ++ [n] ++ revqsort smaller
                    where
                        larger = [a | a <- ns, a >= n]
                        smaller = [b | b <- ns, b < n]

main :: IO ()
main = do
    let numbers = [2, 4, 3, 6, 1, 3, 9, 7]
    putStrLn $ "Reversed Qsort: " ++ show (revqsort numbers)


