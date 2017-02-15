data List t = E | C t (List t)

lst1 :: List Int
lst1 = C 3 (C 5 (C 2 E))

lst2 :: List Char
lst2 = C 'x' (C 'y' (C 'z' E))

lst3 :: List Bool
lst3 = C True (C False E)

--Funciones polimorficas
filterList _ E = E
filterList p (C x xs)
  | p x       = C x (filterList p xs)
  | otherwise = filterList p xs
--  *Main> :t filterList
-- filterList :: (t -> Bool) -> List t -> List t -- para cualquier tipo t, filterListtoma una función de ta Bool, y una lista de t's, y devuelve una lista de t" s

mapList :: (a -> b) -> List a -> List b
mapList _ E        = E
mapList f (C x xs) = C (f x) (mapList f xs)