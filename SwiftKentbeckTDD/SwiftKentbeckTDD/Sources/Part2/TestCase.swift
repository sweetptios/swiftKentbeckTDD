import Foundation

class TestCase: NSObject {
    let name: String

    init(_ name: String) {
        self.name = name
    }

    @objc func setUp() {}
    
    @objc func tearDown() {}

    func run() -> TestResult {
        let result = TestResult()
        result.testStarted()
        setUp()
        let selector = NSSelectorFromString(name)
        perform(selector)
        tearDown()

        return result
    }
}
