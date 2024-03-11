--2 ejercicio
--a 
esCero :: Int -> Bool
esCero x = x==0

--b 
esPositivo :: Int -> Bool
esPositivo x = x > 0

--c 
esVocal :: Char -> Bool
esVocal x | x == 'a' = True
          | x == 'e' = True
          | x == 'i' = True
          | x == 'o' = True
          | x == 'u' = True
          | otherwise = False

--d 
valorAbsoluto :: Int -> Int
valorAbsoluto x | x >= 0 =x
                | x < 0 =(-x)

--2.a) que verifica que todos los elementos de una lista sean True.
paratodo :: [Bool] -> Bool
paratodo []=True
paratodo (x:xs) | x == True = paratodo xs
                | x == False = paratodo [] && False

{--EJEMPLOS
*Main> paratodo []
True
*Main> paratodo [True]
True
*Main> paratodo [True,False]
False
*Main> paratodo [True,False,True]
False
--}

--2.b)
sumatoria :: [Int] -> Int
sumatoria [] = 0
sumatoria (x:xs) = x+sumatoria xs 

--2.c)
productoria :: [Int] -> Int
productoria []=1
productoria (x:xs)=x*productoria xs

--2.d)
factorial :: Int -> Int 
factorial 0=1
factorial 1=1
factorial x=x*factorial(x-1)

EJEMPLOS
{--Main> factorial 0
1
*Main> factorial 12
479001600
*Main> factorial 7
5040--}