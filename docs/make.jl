using Documenter
using DocumenterVitepress

# DocMeta.setdocmeta!(YabusameHoulen, :DocTestSetup, :(using YabusameHoulen); recursive=true)

makedocs(;
    # modules=[YabusameHoulen],
    authors="YabusameHoulen <yabusamehour@gmail.com> and contributors",
    repo="https://github.com/YabusameHoulen/Notes",
    sitename="YabusameHoulen",
    format=DocumenterVitepress.MarkdownVitepress(;
        repo="https://github.com/YabusameHoulen/Notes",
        devurl="dev",
        devbranch="master",
        ### temporal adjustment to preview Documententation development instantly
        # md_output_path = "test",
        # build_vitepress = false,
    ),
    pages=[
        "Home" => "index.md",
    ],
    warnonly=true,
    ### temporal adjustment to preview Documententation development instantly
    # clean = false,
)

deploydocs(;
    repo="github.com/YabusameHoulen/Notes.git",
    devbranch="master",
    branch = "gh-pages",
    push_preview=true,
)