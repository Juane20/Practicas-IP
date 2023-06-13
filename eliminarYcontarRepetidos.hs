eliminarYcontarRepetidos :: [int] -> ([int], [(int,int)])
eliminarYcontarRepetidos [] = ([], [])
eliminarYcontarRepetidos list
    | tieneRepetidos list = (listaSinRepetidos, listaContar)
    | otherwise = (list, [])
    where
        listaSinRepetidos = eliminarRepetidos list
        listaContar = listaTuplas listaSinRepetidos list


tieneRepetidos :: [int] -> Bool
tieneRepetidos [] = False
tieneRepetidos (x:xs)
    | pertenece x xs = True
    | otherwise = tieneRepetidos xs

pertenece :: (Eq t) => t -> [t] -> Bool
pertenece _ [] = False
pertenece x (y:ys)
    | x == y = True
    | otherwise = pertenece x ys

eliminarRepetidos :: (Eq t) => [t] -> [t]
eliminarRepetidos [] = []
eliminarRepetidos (x:xs)
    | pertenece x xs = eliminarRepetidos xs
    | otherwise = (x:eliminarRepetidos xs)

listaTuplas :: [int] -> [int] -> [(int,int)]
listaTuplas [] [] = []
listaTuplas (x:xs) l2 = (x, cantApariciones x l2) ++ listaTuplas xs l2

cantApariciones :: (Eq t) => t -> [t] -> int
cantApariciones _ [] = 0
cantApariciones x (y:ys)
    | x == y = cantApariciones x ys + 1
    | otherwise = cantApariciones x ys