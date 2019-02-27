# importing the example model and the sparseQFCA module
include("../example/ecoli.jl")
using .ecoli, Pkg, Test
Pkg.add("sparseQFCA")
using sparseQFCA
# finding all the flux coupling relations among the reactions
fctable = @time QFCA(S, rev)[end]
@test fctest(fctable)