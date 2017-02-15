-- TIPOS DE ENUMERACION

data Thing = Shoe 
           | Ship 
           | SealingWax 
           | Cabbage 
           | King
  deriving Show

shoe :: Thing
shoe = Shoe

listO'Things :: [Thing]
listO'Things = [Shoe, SealingWax, King, Cabbage, King]

--Podemos escribir funciones en Things por coincidencia de patrones .

isSmall :: Thing -> Bool
isSmall Shoe       = True
isSmall Ship       = False
isSmall SealingWax = True
isSmall Cabbage    = True
isSmall King       = False

isSmall2 :: Thing -> Bool
isSmall2 Ship = False
isSmall2 King = False
isSmall2 _    = True

-- Mas alla de las enumeraciones 
-- Algebraicos

data FailableDouble = Failure
                    | OK Double
  deriving Show

ex01 = Failure  -- Definiendo valores 
ex02 = OK 3.4

safeDiv :: Double -> Double -> FailableDouble -- validacion para division para cero 
safeDiv _ 0 = Failure
safeDiv x y = OK (x / y)

-- TIPOS DE DATOS PARA PERSONAS 


-- Store a person's name, age, and favourite Thing.
data Person = Person String Int Thing
  deriving Show

brent :: Person
brent = Person "Brent" 31 SealingWax

stan :: Person
stan  = Person "Stan" 94 Cabbage

getAge :: Person -> Int
getAge (Person _ a _) = a

baz :: Person -> String
baz p@(Person n _ _) = "The name field of (" ++ show p ++ ") is " ++ n ---USO de x@pat

--Anidamiento de patrones
checkFav :: Person -> String
checkFav (Person n _ SealingWax) = n ++ ", you're my kind of person!"
checkFav (Person n _ _)          = n ++ ", your favorite thing is lame."

