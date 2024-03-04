{-

The examples were executed in the GHCI Interpreter. Pasting the contents below.

(base) deepak@Deepaks-MacBook-Pro C Programs % ghci
GHCi, version 9.4.8: https://www.haskell.org/ghc/  :? for help
ghci> 2 + 3 * 4
14
ghci> (2 + 3) * 4
20
ghci> sqrt (3^2 + 4^2) 5.0

<interactive>:3:1: error:
    • Could not deduce (Floating (t0 -> t2))
      from the context: (Floating (t1 -> t2), Fractional t1)
        bound by the inferred type for ‘it’:
                   forall {t1} {t2}. (Floating (t1 -> t2), Fractional t1) => t2
        at <interactive>:3:1-20
        (maybe you haven't applied a function to enough arguments?)
      The type variable ‘t0’ is ambiguous
    • In the ambiguity check for the inferred type for ‘it’
      To defer the ambiguity check to use sites, enable AllowAmbiguousTypes
      When checking the inferred type
        it :: forall {t1} {t2}. (Floating (t1 -> t2), Fractional t1) => t2
ghci> sqrt (3^2 + 4^2)
5.0
ghci> head [1, 2, 3, 4, 5]
1
ghci> tail  [1, 2, 3, 4, 5]
[2,3,4,5]
ghci>  [1, 2, 3, 4, 5] !

<interactive>:7:19: error:
    parse error (possibly incorrect indentation or mismatched brackets)
ghci>  [1, 2, 3, 4, 5] !! 2
3
ghci> take 3  [1, 2, 3, 4, 5]
[1,2,3]
ghci> drop 3  [1, 2, 3, 4, 5]
[4,5]
ghci> length  [1, 2, 3, 4, 5]
5
ghci> sum  [1, 2, 3, 4, 5]
15
ghci> product  [1, 2, 3, 4, 5]
120
ghci> [1, 2, 3] ++ [4, 5]
[1,2,3,4,5]
ghci> reverse [5, 4, 3, 2, 1]
[1,2,3,4,5]
ghci> double x = x + x
ghci> double 5
10
ghci> 
ghci> quadruple x = double (double x)
ghci> quadruple 5
20
ghci> take (double 2)  [1, 2, 3, 4, 5]
[1,2,3,4]
ghci> factorial n = product [1..n]
ghci> factorial 5
120
ghci> average ns = sum ns 'div' length ns

<interactive>:24:21: error:
    • Syntax error on 'div'
      Perhaps you intended to use TemplateHaskell or TemplateHaskellQuotes
    • In the Template Haskell quotation 'div'
ghci> average ns = sum ns `div` length ns
ghci> average [1, 2, 3, 4, 5]
3
ghci> 



-}
