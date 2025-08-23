import Foundation

class WasRun: TestCase {
    var wasRun: Int?

    override init(_ name: String) {
        self.wasRun = nil

        super.init(name)
    }

    @objc func testMethod() {
        self.wasRun = 1
    }

    func run() {
        let selector = NSSelectorFromString(name)
        perform(selector)
    }
}
