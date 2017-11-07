import qbs 1.0
import qbs.FileInfo

Product {
    name:  "bufpool"
    type:  "staticlibrary"
    files: ["BufPool.cpp"]

    property string buildVariant: qbs.buildVariant
    property string lib_dir: FileInfo.path(sourceDirectory + "/../../../../libs/")

    destinationDirectory: FileInfo.joinPaths(lib_dir, buildVariant)

    Depends { name: "cpp" }
    Depends { name: "Qt"; submodules: ["testlib"] }

    cpp.defines: ["ENA_FW_QT", "MSG_SELF_RELEASE"]
    cpp.includePaths: ['../../../../include']

    Group {
        name:      "Windows stuff"
        condition: qbs.targetOS.contains("windows")
        cpp.defines: "ENA_WIN_API"
    }
}

        
