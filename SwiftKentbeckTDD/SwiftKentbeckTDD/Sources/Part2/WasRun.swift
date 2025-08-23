class WasRun {
    let wasRun: Int?

    init(_ name: String) {
        self.wasRun = nil
    }

    func testMethod() {}

    func run() {
        testMethod()
    }
}
