-- When the function name is 'sum' then the compiler gives an error that it is an
-- an ambiguous reference to sum. It should be Prelude.sum or Main.sum
-- I don't know the reasons yet

mysum :: Num a => [a] -> a
mysum [] = 0
mysum (n:ns) = n + mysum ns

main :: IO ()
main = do
    let numbers = [1..100]
    putStrLn $ "Sum: " ++ show (mysum numbers)
