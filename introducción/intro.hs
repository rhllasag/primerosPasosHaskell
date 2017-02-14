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