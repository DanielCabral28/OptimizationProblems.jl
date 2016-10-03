# Hock and Schittkowski problem number 28.
#
#   Source:
#   Problem 28 in
#   W. Hock and K. Schittkowski,
#   Test examples for nonlinear programming codes,
#   Lectures Notes in Economics and Mathematical Systems 187,
#   Springer Verlag, Heidelberg, 1981.
#
#   classification SLR2-AY-3-1
#
# D. Cabral, Curitiba/PR, Brazil, 10/2016.


export hs28

"HS28 model"
function hs28(args...)

  nlp = Model()
  x0 = [-4.0, 1.0, 1.0]

  @variable(nlp, x[i=1:3], start=x0[i])

  @NLobjective(
    nlp,
    Min,
    (x[1] + x[2])^2 + (x[2] + x[3])^2
  )

  @NLconstraint(
    nlp,
    constr,
    x[1] + 2*x[2] + 3*x[3] -1 == 0
  )

  return nlp
end
