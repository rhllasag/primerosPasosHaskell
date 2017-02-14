x :: Int
x = 3

-- Tipos de Datos Int Double Chat Bool String
biggestInt, smallestInt :: Int
biggestInt  = maxBound
smallestInt = minBound

-- Operaciones +-*/    `mod`  `div`  
ex08 = (-3) * (-7) -- Operaciones con numeros negativos
divEnteros = 12 `div` 2 
divDouble = 12.12 / 23.3


-- Boleanos  
-- diferente /=
-- negacion not 
-- if then


--  FUNCIONES BASICAS
sumtorial :: Integer -> Integer
sumtorial 0 = 0
sumtorial n = n + sumtorial (n-1)

-- PARES
sumPair :: (Int,Int) -> Int
sumPair (x,y) = x + y

-- FUNCIONES CON MUCHOS ARGUMENTOS
f :: Int -> Int -> Int -> Int
f x y z = x + y + z
ex17 = f 3 17 8

-- LISTAS

emptyList = []
ex18 = 1 : 2 : [] -- agregando numeros a la lista
-- Generate the sequence of hailstone iterations from a starting number.
hailstoneSeq :: Integer -> [Integer]
hailstoneSeq 1 = [1]
hailstoneSeq n = n : hailstoneSeq (n-1)

--FUNCIONES EN LAS LISTAS 
intListLength :: [Integer] -> Integer
intListLength []     = 0
intListLength (x:xs) = 1 + intListLength xs


sumEveryTwo :: [Integer] -> [Integer]
sumEveryTwo []         = []     -- Do nothing to the empty list
sumEveryTwo (x:[])     = [x]    -- Do nothing to lists with a single element
sumEveryTwo (x:(y:zs)) = (x + y) : sumEveryTwo zs

hailstoneLen :: Integer -> Integer
hailstoneLen n = intListLength (hailstoneSeq n) - 1