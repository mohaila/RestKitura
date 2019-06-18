import Kitura
import Configuration
import Health
import HeliumLogger

public let projectRoot = ConfigurationManager.BasePath.project.path
public let health = Health()

public class App {
    let router = Router()

    public init() throws {
        HeliumLogger.use()

        initializeMetrics(router: router)
    }

    func postInit() throws {
        initializeHealthRoute(app: self)
        initializeHelloRoute(app: self)
    }

    public func run() throws {
        try postInit()
        Kitura.addHTTPServer(onPort: 8080, with: router)
        Kitura.run()    
    }
}