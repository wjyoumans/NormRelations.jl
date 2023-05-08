
import Hecke.NormRel: NormRelation

import Hecke: order, group, subfield, subfields, coefficients, subgroup, subgroups, 
	      norm, istrivial, lift!, MapSUnitGrpFacElem

# Combine some functions from Hecke and Hecke.NormRel

function embedding(N::NormRelation)
  return Hecke.NormRel.embedding(N)
end

function field(N::NormRelation)
  return Hecke.NormRel.field(N)
end

function index(N::NormRelation)
  return Hecke.NormRel.index(N)
end

function subfield(N::NormRelation, i::Int64)
  return Hecke.NormRel.subfield(N, i)
end

function subfields(N::NormRelation)
  return Hecke.NormRel.subfield(N)
end

add_verbose_scope(:NormRelCache)
add_assert_scope(:NormRelCache)

include("NormRelation/AbNormRelation.jl")
include("NormRelation/NormRelCache.jl")

export abelian_norm_relation, norm_relation_cache, has_norm_relation,
       decomposition_lifts, sunit_group, subfields, idealset, decomposition_lift
