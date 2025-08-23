class TestResult {
    private var runCount: Int
    private var failedCount: Int

    init() {
        runCount = 0
        failedCount = 0
    }

    func testStarted() {
        runCount += 1
    }

    func testFailed() {
        failedCount += 1
    }

    func summary() -> String {
        "\(runCount) run, \(failedCount) failed"
    }
}
