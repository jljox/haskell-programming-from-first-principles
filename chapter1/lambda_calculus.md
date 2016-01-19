# Exercices

## Combinators

A combinator is a lambda term with no free variable.
A free variable is a variable that is not bound.
A bound variable shows up in the head of the lamba expression.

eg. λx.xy 
x is bound.
y is free.

Deternime if each of the following are combiantors

1. λx.xxx
Yes because x is the only variable and it is bound.

2. λxy.zs
No because z is a free variable.

3. λxyz.xy(zx)
Yes bacause all varialbes are bound.

4. λxyz.xy(zxy)
Yes because all variables are bound.

5. λxy.xy(zxy)
No because z is a free variable.


## Normal form or diverge?

Determine if each of the following can be reduced to a normal form or if they diverge.

1. λx.xxx
No further reductions are needed so we are in the normal form.

2. (λz.zz)(λy.yy)
Diverges as we have:

replace the bound varialbe y with its value λy.yy
(λz:=λy.yy.(λy.yy)(λy.yy))

drop the head and we have:
(λy.yy)(λy.yy)

So there is no conversion as we are back where we stated.

3. (λx.xxx)z
reduces to:
λx:=z.zzz
zzz
So does not diverge.

## Beta reduce
Evaluate, i.e beta reduce the following terms.

1. (λabc.cba)zz(λwv.w)

rewrite with nested lambdas
(λa.λb.λc.cba)zz(λwv.w)
