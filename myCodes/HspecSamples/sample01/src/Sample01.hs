module Sample01
  (
    sumList
    , fact
    , fib
  )
  where

sumList :: [Integer] -> Integer
sumList xs = foldr (+) 0 xs 

fact :: Integer -> Integer
fact 1 = 1
fact n = n * fact(n - 1)
-- fact n = foldl (*) 1 [1..n]

fib :: Integer -> [Integer]
fib n = undefined
