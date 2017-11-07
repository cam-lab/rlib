import qbs 1.0
import qbs.FileInfo

Product {
    name:  "rawstreamtester"
    type:  "staticlibrary"
    files: ["RawStreamTester.cpp"]

    property string buildVariant: qbs.buildVariant
    property string lib_dir: FileInfo.path(sourceDirectory + "/../../../../libs/")

    destinationDirectory: FileInfo.joinPaths(lib_dir, buildVariant)

    Depends { name: "cpp" }
    Depends { name: "Qt"; submodules: ["testlib"] }

    cpp.includePaths: ['../../../../include']
}

        

