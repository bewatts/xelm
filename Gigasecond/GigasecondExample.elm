module GigasecondExample where

import Date.Op exposing (format)
import Result exposing (toMaybe)
import Date exposing (Date)
import Time exposing (..)

formatISO = format "Y-m-dTH:i:s"

getDateFromString : String -> Date
getDateFromString date =
  case (toMaybe (Date.fromString date)) of
    Just newDate -> newDate
    Nothing -> getDateFromString "2015-10-12"

fromDay : String -> String
fromDay givenDateString =
  formatISO (Date.fromTime ((Date.toTime ((getDateFromString givenDateString))) + (10^9 * second)))
  -- formatISO (getDateFromString givenDateString)
