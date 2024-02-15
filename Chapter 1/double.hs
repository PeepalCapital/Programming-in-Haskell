-- Define a function called 'double' which doubles an integer
double :: Int -> Int
double x = x + x

-- Main function to demonstrate the usage of the function double
main :: IO ()
main = do
  -- Call the function doubler with an example value 
  let result = double 4
  
  -- Print the doubled value
  putStrLn $ "Doubled value: " ++ show result
