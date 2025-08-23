class TestResult {
    private var runCount: Int

    init() {
        runCount = 0
    }

    func testStarted() {
        runCount += 1
    }

    func summary() -> String {
        "\(runCount) run, 0 failed"
    }
}
