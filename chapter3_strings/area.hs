module Area where

-- area won't compile, d is not in scope
-- area d = pi * (r * r)
-- r = d / 2

area' d = pi * (r * r)
  where r = d / 2
