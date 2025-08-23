class TestResult {
    private var runCount: Int

    init() {
        runCount = 1
    }

    func summary() -> String {
        "\(runCount) run, 0 failed"
    }
}
