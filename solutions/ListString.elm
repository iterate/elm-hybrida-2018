module ListString exposing (..)

import Html exposing (Html, text, div)
import String exposing (split)


awesomeString : String
awesomeString =
    "This is a string"


lettersInString : String -> List String
lettersInString string =
    split "" string


main : Html a
main =
    div [] [ text (toString (lettersInString awesomeString)) ]
