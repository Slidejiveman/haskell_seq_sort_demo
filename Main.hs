module Main where

--sort based on quick sort, which chooses the first element as the pivot.
--this is a sequential program.
sort :: (Ord a) => [a] -> [a]
sort (x:xs) = lesser ++ x:greater
    where lesser  = sort [y | y <- xs, y <  x]
          greater = sort [y | y <- xs, y >= x]
sort _ = []

main = print (sort[5,3,7,6,5,8,2])