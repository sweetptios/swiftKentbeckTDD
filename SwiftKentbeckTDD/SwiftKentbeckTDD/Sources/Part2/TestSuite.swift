class TestSuite {
    private var tests: [TestCase]

    init() {
        self.tests = []
    }

    func add(_ test: TestCase) {
        tests.append(test)
    }

    func run(_ result: TestResult) {
        tests.forEach {
            $0.run(result)
        }
    }
}
