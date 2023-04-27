--Ejercicio 1.1
longitud :: [t] -> Integer
longitud [] = 0
longitud (_:xs) = longitud xs + 1

--Ejercicio 1.2
ultimo :: [t] -> [t]
ultimo [] = []
ultimo [x] = [x]
ultimo (_:ys) = ultimo ys

--Ejercicio 1.3
principio :: [t] -> [t]
principio [x] = []
principio (x:xs) = (x:principio xs)

--Ejercicio 1.4
reverso :: [t] -> [t]
reverso [] = []
reverso [x] = [x]
reverso (x:xs) = reverso xs ++ [x]

--Ejercicio 2.1
pertenece :: (Eq t) => t -> [t] -> Bool
pertenece y [] = False
pertenece y (x:xs)
    | x == y = True
    | otherwise = pertenece y xs

--Ejercicio 2.2

fAuxComparar :: (Eq t) => t -> [t] -> Bool
fAuxComparar _ [] = False
fAuxComparar x [z] = pertenece x [z]
fAuxComparar x (y:ys)
    | x == y = fAuxComparar y ys
    | otherwise = False


todosIguales :: (Eq t) => [t] -> Bool
todosIguales [] = True
todosIguales [x] = True
todosIguales (x:xs) = fAuxComparar x xs
