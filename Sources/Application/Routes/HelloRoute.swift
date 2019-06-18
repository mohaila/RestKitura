import Kitura

func initializeHelloRoute(app: App) {
    app.router.get("/") { request, response, next in
        response.send("Hello world")
        next()
    }
}