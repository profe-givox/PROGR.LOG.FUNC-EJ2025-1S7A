module Main where

import qualified Bowling (someFunc)

main :: IO ()
main = do
  -- putStrLn "INgrese una linea: "
  -- linea <- getLine
  -- putStrLn ("La linea ingresada es: " ++ linea)
  -- putStrLn "INgrese una linea: "
  -- numero <- readLn :: IO Int
  -- putStrLn $ "El doble del numero ingresado es: " ++ show (numero * 2)
  -- entradaCaracter
  -- entradaGetContent
  entradaInterectivo

entradaCaracter :: IO ()
entradaCaracter = do
  putStrLn "Ingrese un caracter: "
  caracter <- getChar
  putStrLn ("El caracter ingresado es: " ++ [caracter])

entradaGetContent :: IO ()
entradaGetContent = do
  putStrLn "Ingrese un texto: "
  texto <- getContents
  putStrLn ("El texto ingresado es: " ++ texto)

entradaInterectivo :: IO ()
entradaInterectivo = do
  putStrLn "Ingrese un texto: "
  interact (\x -> "El texto ingresado es: " ++ x)
