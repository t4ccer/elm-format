module Util.ListTest where

import Test.HUnit (Assertion, assertEqual)
import Test.Framework
import Test.Framework.Providers.HUnit

import Util.List


tests :: Test
tests =
    testGroup "Util.List"
    [ testGroup "pairs"
        [ testCase "" $ assertEqual "" [(1,2), (2,3)] $ pairs [1, 2, 3]
        , testCase "empty" $ assertEqual "" [] $ pairs ([] :: [Int])
        , testCase "single" $ assertEqual "" [] $ pairs [1]
        ]
    , testGroup "intersperseMap"
        [ testCase "" $ assertEqual "" [ 21, 20050, 51, 50070, 71 ] $ intersperseMap (\a b -> [1000*a+b]) (\a -> a + 1) [ 20, 50, 70]
        , testCase "empty" $ assertEqual "" [] $ intersperseMap (\a b -> []) id ([] :: [Int])
        ]
    ]