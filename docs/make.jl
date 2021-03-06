push!(LOAD_PATH,"../src/")

using Documenter
using SimpleClifford

DocMeta.setdocmeta!(SimpleClifford, :DocTestSetup, :(using SimpleClifford); recursive=true)

makedocs(
doctest = false,
clean = true,
sitename = "SimpleClifford.jl",
format = Documenter.HTML(),
modules = [SimpleClifford],
authors = "Stefan Krastanov",
pages = [
"SimpleClifford.jl" => "index.md",
"Manual" => "manual.md",
"Canonicalization" => "canonicalization.md",
"Mixed States" => "mixed.md",
"Datastructure Choice" => "datastructures.md",
"Useful States and Operators" => "commonstates.md",
"Plotting" => "plotting.md",
"API" => "API.md"
]
)

deploydocs(
    repo = "github.com/Krastanov/SimpleClifford.git"
)
