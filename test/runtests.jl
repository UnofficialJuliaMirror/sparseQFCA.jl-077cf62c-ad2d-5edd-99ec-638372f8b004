# importing the example model and the sparseQFCA module
include("../example/ecoli.jl")
include("../src/sparseQFCA.jl")
using .sparseQFCA, .ecoli, Test
# finding all the flux coupling relations among the reactions
fctable = @time QFCA(S, rev)[end]
@test fctest(fctable)