#
# [Haskell-ピタゴラス数を計算する](http://capm-network.com/?tag=Haskell-%E3%83%94%E3%82%BF%E3%82%B4%E3%83%A9%E3%82%B9%E6%95%B0%E3%82%92%E8%A8%88%E7%AE%97%E3%81%99%E3%82%8B)
#

pythagorean a = [(x, y, z) | x <- [1..a],
                             y <- [1..a],
                             z <- [1..a],
                             x < y,
                             x * x + y * y == z * z]
main = print(pythagorean 100)

