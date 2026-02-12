module Helper exposing (..)

import Html exposing (Html, div, h1, li, text, ul)



-- Record para ProgrammingLanguage -------------------------------------------------------------


type alias ProgrammingLanguage =
    { name : String
    , releaseYear : Int
    , currentVersion : String
    }



-- -----------------------------------------


languages : List ProgrammingLanguage
languages =
    [ { name = "Elm", releaseYear = 2012, currentVersion = "0.19.1" }
    , { name = "JavaScript", releaseYear = 1995, currentVersion = "ECMAScript 2025" }
    ]



-- -----------------------------------------


languageNames : List ProgrammingLanguage -> List String
languageNames langs =
    List.map .name langs



-- Record User -------------------------------------------------------------


type alias User =
    { name : String
    , uType : String
    }



-- -----------------------------------------


users : List User
users =
    [ { name = "Roberto", uType = "Student" }
    , { name = "Mitsiu", uType = "Professor" }
    , { name = "Ana", uType = "Student" }
    ]



-- -----------------------------------------


onlyStudents : List User -> List String
onlyStudents userList =
    List.map
        (\u ->
            if u.uType == "Student" then
                u.name

            else
                ""
        )
        userList



-- Alias Videogame -------------------------------------------------------------


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }



-- -----------------------------------------


videogames : List Videogame
videogames =
    [ { title = "Control"
      , releaseYear = 2019
      , available = True
      , downloads = 5000000
      , genres = [ "Action", "Shooter" ]
      }
    , { title = "Ocarina of Time"
      , releaseYear = 1998
      , available = False
      , downloads = 10000000
      , genres = [ "Action", "Adventure" ]
      }
    ]



-- -----------------------------------------


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres games =
    List.map .genres games



-- Record Computer ----------------------------------------------------------------------------------


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }



-- -----------------------------------------


myLaptop : Computer
myLaptop =
    { ram = "16GB"
    , model = "ROG Strix"
    , brand = "ASUS"
    , screenSize = "15.6"
    }



-- MAIN ----------------------------------------------------------------------------------


main : Html msg
main =
    div []
        [ h1 [] [ text "My laptop" ]
        , div []
            [ ul []
                [ li [] [ text ("Ram: " ++ myLaptop.ram) ]
                , li [] [ text ("Modelo: " ++ myLaptop.model) ]
                , li [] [ text ("Marca: " ++ myLaptop.brand) ]
                , li [] [ text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]



-- -----------------------------------------


view : Html msg
view =
    div []
        [ h1 [] [ text "My Laptop" ]
        , ul []
            [ li [] [ text ("Ram: " ++ myLaptop.ram) ]
            , li [] [ text ("Modelo: " ++ myLaptop.model) ]
            , li [] [ text ("Marca: " ++ myLaptop.brand) ]
            , li [] [ text ("Pulgadas: " ++ myLaptop.screenSize) ]
            ]
        ]



--  Tssss ----------------------------------------------------------------------------------


add2 : Int -> Int -> Int
add2 x y =
    x + y


add3 : Float -> Float -> Float -> Float
add3 x y z =
    x + y + z


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc x y operation =
    operation x y
