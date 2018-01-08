module Sample01Spec (main, spec) where

import Test.Hspec
import Test.QuickCheck

import Sample01

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "sumList" $ do
    it "sum of integer list" $ do
      sumList [1, 2, 3] `shouldBe`  6
      sumList [1, 5, 10, 4] `shouldBe`  20
      sumList [-1, -5, 10, 4] `shouldBe`  8

  describe "fact" $ do
    it "factorial of n" $ do
      fact 0 `shouldBe`  1
      fact 1 `shouldBe`  1
      fact 2 `shouldBe`  2
      fact 3 `shouldBe`  6
      fact 10 `shouldBe` 55 

--   describe "fib" $ do
--     it "fibonacci list" $ do
--       fib 0 `shouldBe`  [0]
--       fib 1 `shouldBe`  [0, 1]
--       fib 2 `shouldBe`  [0, 1, 1]
--       fib 10 `shouldBe` [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55] 
