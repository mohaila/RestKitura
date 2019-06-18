import Kitura
import SwiftMetrics
import SwiftMetricsDash
import SwiftMetricsPrometheus
import LoggerAPI

var swiftMetrics: SwiftMetrics?
var swiftMetricsDash: SwiftMetricsDash?
var swiftMetricsPrometheus: SwiftMetricsPrometheus?

func initializeMetrics(router: Router) {
    do {
        let metrics = try SwiftMetrics()
        let dash = try SwiftMetricsDash(swiftMetricsInstance: metrics, endpoint:router)
        let prometheus = try SwiftMetricsPrometheus(swiftMetricsInstance: metrics, endpoint:router)

        swiftMetrics = metrics
        swiftMetricsDash = dash
        swiftMetricsPrometheus = prometheus

        Log.info("Metrics initialized")
    } catch {
        Log.warning("Metrics initialization failed: \(error)")
    }
}