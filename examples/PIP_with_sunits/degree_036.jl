
using NormRelations

#####################################################################
#
# degree 36, classic PIP in degree <= 6, saturation/roots in degree <= 18
#
# Norm Relation: ~0.7 sec
# PIP: ~9.9 sec
#
#####################################################################

K, a = cyclotomic_field(126, "a")
OK = lll(maximal_order(K))
g = -2*a^35 + a^34 + 2*a^33 - a^32 + 2*a^30 - a^29 + a^28 + 2*a^27 - 2*a^26 + 2*a^25 - 2*a^24 + 2*a^23 + 2*a^22 + a^20 + 2*a^19 + a^18 + 2*a^17 - 2*a^16 - a^15 - 2*a^14 - a^12 - 2*a^11 + 2*a^8 - 2*a^7 + a^6 - 2*a^5 - 2*a^4 + a^3 + 2*a^2 - 2*a + 1
I = ideal(OK, OK(g))

println("K = Cyclotomic field of conductor 126, degree 36.")
println("Using S-unit approach.")
println("Computing norm relation:")
@time _, N = abelian_norm_relation(K);
println("Computing generator:")
@time b, h = isprincipal_sunits(I, N);
if b
  println("Success!")
else
  println("Something went wrong.")
end
