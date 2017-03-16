module Vehicles where

data Price = Price Integer
  deriving (Eq, Show)

data Manufacturer = Mini | Mazda | Tata
  deriving (Eq, Show)

data Airline = PapuAir | CatapultR'Us | TakeYourChanges
  deriving (Eq, Show)

type PlaneSize = Integer
data Vehicle = Car Manufacturer Price | Plane Airline PlaneSize
  deriving (Eq, Show)

myCar :: Vehicle
myCar = Car Mini (Price 14000)

urCar :: Vehicle
urCar = Car Mazda (Price 20000)

clownCar :: Vehicle
clownCar = Car Tata (Price 7000)

doge :: Vehicle
doge = Plane PapuAir 20

isCar :: Vehicle -> Bool
isCar (Car _ _) = True
isCar _         = False
{-
λ> isCar $ Car Tata $ Price 100
True
λ> isCar $ Plane PapuAir 20
False
-}

isPlane :: Vehicle -> Bool
isPlane (Plane _ _) = True
isPlane _           = False
{-
λ> isPlane $ Plane PapuAir 2
True
λ> isPlane $ Car Tata $ Price 100
False
-}

areCars :: [Vehicle] -> [Bool]
areCars = map isCar
{-
λ> areCars [Plane PapuAir 10, Car Tata $ Price 20000]
[False,True]
-}

-- function that tells the manufucturer
-- Note: this is not a total function
getManu :: Vehicle -> Manufacturer
getManu (Car manufacturer _) = manufacturer
{-
λ> getManu (Car Mazda (Price 200000))
Mazda

λ> getManu $ Plane TakeYourChanges
*** Exception: vehicles.hs:56:1-43: Non-exhaustive patterns in function getManu
-}
