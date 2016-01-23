# Chapter 2 exercices

## Parenthesization

1. 2 + 2 * 3 - 1
λ> (2 + 2 * 3 - 1) == ( 2 + (2 * 3) - 1)
True

2. (^) 10 $ 1 + 1
λ> ((^) 10 $ 1 + 1) == ((^) 10 (1 + 1))
True

3. 2 ^ 2 * 4 ^ 5 + 1
λ> (2 ^ 2 * 4 ^ 5 + 1) == ( (2 ^ 2) * (4 ^ 5) + 1 ) 
True

## Equivalent expressions

1. Yes
λ> 1 + 1 == 2
True

2. Yes
λ> 10 ^ 2 == 10 + 9 * 10
True

3. No
λ> 400 - 37 == (-) 37 400
False

4. No

5. No
λ> 2 * 5 + 18
28
λ> 2 * 5 + 18 == 2 * (5 + 18)
False
λ> 2 * (5 + 18)
46

## More fun with functions

1. 
λ> :l waxOn.hs 
[1 of 1] Compiling WaxOn            ( waxOn.hs, interpreted )
Ok, modules loaded: WaxOn.
λ> z
7
λ> x
225
λ> y
15
λ> x
225
λ> waxOn 
1125
λ> 10 + waxOn 
1135
λ> (+10) waxOn 
1135
λ> (-) 15 waxOn 
-1110
λ> (-) waxOn 15
1110

2. enter triple function at the REPL
λ> let triple x = x * 3

3.
λ> triple waxOn 
3375

4.
λ> :l waxOn.hs 
[1 of 1] Compiling WaxOn            ( waxOn.hs, interpreted )
Ok, modules loaded: WaxOn.
λ> waxOn
1125
λ> waxOn'
1125
λ> waxOn == waxOn'
True


5. 
λ> triple waxOn == triple waxOn'
True


