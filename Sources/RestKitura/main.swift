import Application
import LoggerAPI

do {
    let app = try App()
    try app.run()
} catch {
    Log.error("Starting app failed: \(error)")
}

