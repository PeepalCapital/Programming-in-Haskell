seqn :: [IO a] -> IO [a]
seqn [] = return []
seqn (act:acts) = do
    x <- act
    xs <- seqn acts
    return (x:xs)

main :: IO ()
main = do
    chars <- seqn [getChar, getChar, getChar, getChar]
    putStrLn $ "Characters entered: " ++ chars
