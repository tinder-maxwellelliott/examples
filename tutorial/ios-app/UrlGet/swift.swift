import CocoaLumberjack

let ddloglevel = DDLogLevel.verbose

private func printSomething() {
    DDLogVerbose("Verbose")
    DDLogDebug("Debug")
    DDLogInfo("Info")
    DDLogWarn("Warn")
    DDLogError("Error")
}
