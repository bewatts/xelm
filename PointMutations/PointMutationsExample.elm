module PointMutationsExample where
import String
import List

hammingDistance : String -> String -> Int
hammingDistance firstString secondString =
  ( List.foldr
    (\bool -> \existingValue -> if (bool == False) then 1 + existingValue else existingValue)
    0
    (getComparedList firstString secondString)
  )

getComparedList : String -> String -> List Bool
getComparedList firstString secondString =
  List.map2
    (\firstChar -> \secondChar -> firstChar == secondChar)
    (String.toList firstString)
    (String.toList secondString)
