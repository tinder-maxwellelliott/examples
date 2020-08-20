load("@rules_apple_line//apple:mixed_static_framework.bzl", "mixed_static_framework")

mixed_static_framework(
    name = "CocoaLumberjack",
    srcs = glob([
        "**/*.swift",
        "**/*.m"
    ]),
    hdrs = glob([
        "**/*.h"
    ], [
        "CocoaLumberjack/Supporting Files/CocoaLumberjack.h",
        "CocoaLumberjackSwift/Supporting Files/CocoaLumberjackSwift.h"
    ]),
    includes = [
        "CocoaLumberjack/include"
    ],
    umbrella_header = "CocoaLumberjack/Supporting Files/CocoaLumberjack.h",
    minimum_os_version = "9.0"
)
