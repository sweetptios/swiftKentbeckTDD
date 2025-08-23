import Foundation

class TestCase: NSObject {
    let name: String

    init(_ name: String) {
        self.name = name
    }

    @objc func setUp() {}
    
    @objc func tearDown() {}

    func run(_ result: TestResult) {
        result.testStarted()
        setUp()

        let selector = NSSelectorFromString(name)

        do {
            try ObjCInvoker.perform(selector, on: self)
        } catch {
            result.testFailed()
        }

        tearDown()
    }
}
