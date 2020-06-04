load("@rules_cc//cc:defs.bzl", "objc_library")
load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")

objc_library(
    name = "UrlGetClasses",
    srcs = [
        "UrlGet/AppDelegate.m",
        "UrlGet/UrlGetViewController.m",
        "UrlGet/main.m",
    ] + [":GeneratedFile"],
    hdrs = glob(["UrlGet/*.h"]),
)

genrule(
    name = "GeneratedFile",
    srcs = [],
    outs = ["GeneratedFile.m"],
    cmd = "echo 'int something(){}' > $@"
)

ios_application(
    name = "ios-app",
    bundle_id = "Google.UrlGet",
    families = [
        "iphone",
        "ipad",
    ],
    infoplists = [":UrlGet/UrlGet-Info.plist"],
    launch_storyboard = "UrlGet/UrlGetViewController.xib",
    minimum_os_version = "8.0",
    visibility = ["//visibility:public"],
    deps = [":UrlGetClasses"],
)
