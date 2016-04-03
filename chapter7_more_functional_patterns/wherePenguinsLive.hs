module WherePenguinsLive where

data WherePenguinsLive =
    Galpagos
  | Antartic
  | Australia
  | SouthAfrica
  | SouthAmerica
  deriving (Eq, Show)

data Penguin =
  Peng WherePenguinsLive
  deriving (Eq, Show)

isSouthAfrica :: WherePenguinsLive -> Bool
isSouthAfrica SouthAfrica = True
isSouthAfrica _           = False

gimmeWhereTheyLive :: Penguin -> WherePenguinsLive
gimmeWhereTheyLive (Peng whereitlives) = whereitlives

humbolt  = Peng SouthAmerica
gentoo   = Peng Antartic
macaroni = Peng Antartic
little   = Peng Australia
galapgos = Peng Galpagos

galapgosPenguin :: Penguin -> Bool
galapgosPenguin (Peng Galpagos) = True
galapgosPenguin _               = False

antarticPenguin :: Penguin -> Bool
antarticPenguin (Peng Antartic) = True
antarticPenguin _               = False

antarticOrGalapagos :: Penguin -> Bool
antarticOrGalapagos p =
  (galapgosPenguin p) || (antarticPenguin p)
