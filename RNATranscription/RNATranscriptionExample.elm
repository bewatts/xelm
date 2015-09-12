module RNATranscriptionExample where
import String

toRNA : String -> String
toRNA input =
  let mapDNAToRna = \c ->
    case c of
      'C' -> 'G'
      'G' -> 'C'
      'A' -> 'U'
      'T' -> 'A'
  in String.map mapDNAToRna input
