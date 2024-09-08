using Documenter
using DocumenterVitepress

# DocMeta.setdocmeta!(YabusameHoulen, :DocTestSetup, :(using YabusameHoulen); recursive=true)

makedocs(;
    # modules=[YabusameHoulen],
    authors="YabusameHoulen <yabusamehour@gmail.com> and contributors",
    repo="github.com/YabusameHoulen/Notes",
    sitename="YabusameHoulen",
    warnonly=true,
    format=DocumenterVitepress.MarkdownVitepress(;
        repo="github.com/YabusameHoulen/Notes",
        devurl="dev",
        devbranch="master",
        ### temporal adjustment to preview Documententation development instantly
        # md_output_path = "tempsrc",
        # build_vitepress = false,
    ),
    pages=[
        "Home" => "index.md",
        "GRB" => [
            "GRB/Start.md",
            "GRB/LeptonicProcesses.md",
            "GRB/HadronicProcesses.md"
        ],
        "GR" => [
            "GR/Start.md",
            "GR/Tensors.md",
        ],
        "QFT" => [
            "QFT/Start.md"
        ],
        "Miscellaneous" => [
            "Miscellaneous/Websites.md"
        ]
    ],
    ### temporal adjustment to preview Documententation development instantly
    # clean = false,
)

deploydocs(;
    repo="github.com/YabusameHoulen/Notes.git",
    devbranch="master",
    branch = "gh-pages",
    push_preview=true,
)
