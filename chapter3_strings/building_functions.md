# Building functions

1. Given the list-manipulation functions mentioned in this chapter, write functions that take the following inputs and return the expected out- puts. Do them directly in your REPL and use the take and drop functions you’ve already seen.

a) -- Given
"Curry is awesome" -- Return
"Curry is awesome!"

λ> "Curry is awsome" ++ "!"
"Curry is awsome!"

λ> concat ["Curry is awsome", "!"]
"Curry is awsome!"

b) -- Given:
"Curry is awesome!" -- Return:
"y"

λ> "Curry is awsome!" !! 4
'y'

λ> (!!) "Curry is awsome!" 4
'y'

λ> head $ drop 4 "Curry is awsome!"
'y'

c) -- Given:
"Curry is awesome!" -- Return: "awesome!"

λ> drop 9 "Curry is awsome!"
"awsome!"

