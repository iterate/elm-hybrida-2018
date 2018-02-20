module Input exposing (..)

import Html exposing (Html, div, input, text)
import Html.Attributes exposing (placeholder)
import Html.Events exposing (onInput)


main : Program Never Model Msg
main =
    Html.beginnerProgram { model = model, view = view, update = update }



-- MODEL


type alias Model =
    { content : String
    }


model : Model
model =
    { content = "" }



-- UPDATE


type Msg
    = UpdateContent String


update : Msg -> Model -> Model
update msg model =
    case msg of
        UpdateContent newContent ->
            { model | content = newContent }



-- VIEW


view : Model -> Html Msg
view model =
    div []
        [ input [ placeholder "Text to show", onInput UpdateContent ] []
        , div [] [ text ("Current content:  " ++ model.content) ]
        ]
