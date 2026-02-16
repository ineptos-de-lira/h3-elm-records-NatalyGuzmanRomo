module Helper exposing (..)

import Html


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2


add3 : Float -> Float -> Float -> Float
add3 int1 int2 int3 =
    int1 + int2 + int3


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2


langs : List { name : String, releaseYear : Int, currentVersion : String }
langs =
    [ { name = "elm", releaseYear = 2012, currentVersion = "0.19.1" }
    , { name = "javascript", releaseYear = 1995, currentVersion = "ECMAScript 2025" }
    ]


languagesName : List { name : String, releaseYear : Int, currentVersion : String } -> List String
languagesName list =
    List.map .name list


users : List { name : String, uType : String }
users =
    [ { name = "Roberto", uType = "Student" }
    , { name = "Mitsiu", uType = "Professor" }
    ]


onlyStudents : List { name : String, uType : String } -> List String
onlyStudents list =
    case list of
        [] ->
            []

        x :: xs ->
            if x.uType == "Student" then
                x.name :: onlyStudents xs

            else
                "" :: onlyStudents xs


type alias VideoGames =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


vg : List VideoGames
vg =
    [ { title = "Roblox"
      , releaseYear = 2004
      , available = True
      , downloads = 72000000000
      , genres = [ "Acción", "Amor", "Terror" ]
      }
    , { title = "Fortnite"
      , releaseYear = 2011
      , available = True
      , downloads = 350000000000
      , genres = [ "Acción", "Diversión" ]
      }
    ]


getVideogameGenres : List VideoGames -> List (List String)
getVideogameGenres list =
    List.map .genres list


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "16"
    , model = "Lenovo LOQ 15IRH8"
    , brand = "Lenovo"
    , screenSize = "15.6"
    }


main : Html.Html msg
main =
    Html.div []
        [ Html.h1 []
            [ Html.text "My Laptop" ]
        , Html.div []
            [ Html.ul []
                [ Html.li [] [ Html.text ("Ram: " ++ myLaptop.ram) ]
                , Html.li [] [ Html.text ("Modelo: " ++ myLaptop.model) ]
                , Html.li [] [ Html.text ("Marca: " ++ myLaptop.brand) ]
                , Html.li [] [ Html.text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]
