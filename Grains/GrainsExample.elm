module GrainsExample where

grainsOnSquare : Int -> Int
grainsOnSquare sq = 2 ^ (sq - 1)


totalGrains = List.sum (List.map grainsOnSquare [1 .. 64])
