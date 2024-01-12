module Main exposing (..)

import Browser
import Html exposing (Html, button, div, text)
import Html.Attributes exposing (class)
import Html.Events exposing (onClick)


main : Program () Int Msg
main =
    Browser.sandbox { init = 0, update = update, view = view }


type Msg
    = Increment
    | Decrement


update : Msg -> number -> number
update msg model =
    case msg of
        Increment ->
            model + 1

        Decrement ->
            model - 1


view : Int -> Html Msg
view model =
    div [ class "w-screen bg-black text-white h-screen grid place-items-center" ]
        [ div [ class "flex flex-row gap-5 text-xl w-full place-content-center" ]
            [ button [ onClick Decrement ]
                [ div [ class "bg-white aspect-square rounded-md w-10 text-black font-bold grid place-items-center" ]
                    [ text "-" ]
                ]
            , div [] [ text (String.fromInt model) ]
            , button [ onClick Increment ]
                [ div [ class "bg-white aspect-square rounded-md w-10 text-black font-bold grid place-items-center" ]
                    [ text "+" ]
                ]
            ]
        ]
