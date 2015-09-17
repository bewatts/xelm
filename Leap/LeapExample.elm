module Leap where

isLeap : Int -> Bool
isLeap year =
  let divisible_by i = year `rem` i == 0
  in (divisible_by 400) || (divisible_by 4) &&  not (divisible_by 100)
