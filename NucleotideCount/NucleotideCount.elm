module NucleotideCount where

import String
import List

nucleotideCounts : String -> List (Char, Int)
nucleotideCounts sequence =
  []

getCount : Char -> String -> (Char, Int)
getCount base sequence = 
  ('', 0)
