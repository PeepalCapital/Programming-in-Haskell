{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}

myprod :: Num a => [a] -> a
myprod [] = 1
myprod (n:ns) = n * myprod ns 

main :: IO ()
main = do
    let numbers = [2, 3, 4]
    putStrLn $ "Product: " ++ show (myprod numbers)