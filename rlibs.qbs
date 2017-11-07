import qbs 1.0

Project {
    name: "rlibs" 

    references: [
        "src/bufpool/bufpool.qbs",
        "src/streamtester/streamtester.qbs"
    ]
}

