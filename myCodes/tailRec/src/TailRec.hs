-- module TailRec
--     ( factorial
--     ) where

-- 合計を計算する末尾再帰関数
recSum n = _sum n 0
_sum 0 acc = acc
_sum n acc = _sum (n - 1) (acc + n)

-- 階乗を計算する末尾再帰関数
factorial n = _fac n 1
_fac 0 acc = acc
_fac n acc = _fac (n - 1) (acc * n)

-- フィボナッチ数を計算する末尾再帰関数
fib :: Integer -> Integer -- 省略可能
fib n = _fib n 1 0
  where
    _fib n x y
      | n <= 0 = y
      | otherwise = _fib (n - 1) (x + y) (x)


main = do
  print $ factorial 5
  print $ recSum 10 
  print $ fib 10
