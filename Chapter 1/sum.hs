numbers :: [Int]
numbers = [1..100]

result :: Int
result = sum numbers

main :: IO ()
main = putStrLn $ "Sum: " ++ show result
