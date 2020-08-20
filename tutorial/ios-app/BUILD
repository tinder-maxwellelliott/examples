load("@rules_cc//cc:defs.bzl", "objc_library")
load("@build_bazel_rules_apple//apple:ios.bzl", "ios_application")
load("@rules_apple_line//apple:apple_library.bzl", "apple_library")

objc_library(
    name = "UrlGetClasses",
    srcs = [
        "UrlGet/AppDelegate.m",
        "UrlGet/UrlGetViewController.m",
        "UrlGet/main.m",
    ],
    deps = [
        ":UrlGetSwift"
    ],
    enable_modules = True,
    hdrs = glob(["UrlGet/*.h"]),
)

apple_library(
    name = "UrlGetSwift",
    srcs = [
        "UrlGet/swift.swift"
    ],
    deps = [
        "@CocoaLumberjack//:CocoaLumberjack"
    ]
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
    deps = [
        ":UrlGetClasses",
        ":UrlGetSwift"
    ]
)
