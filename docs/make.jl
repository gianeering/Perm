using Perm
using Documenter

DocMeta.setdocmeta!(Perm, :DocTestSetup, :(using Perm); recursive=true)

makedocs(;
    modules=[Perm],
    authors="Gianfranco Ponza",
    repo="https://github.com/gianeering/Perm.jl/blob/{commit}{path}#{line}",
    sitename="Perm.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://gianeering.github.io/Perm.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/gianeering/Perm.jl",
    devbranch="main",
)
