import Foundation

class WasRun: TestCase {
    var wasRun: Int?
    private(set) var log: String

    override init(_ name: String) {
        log = ""

        super.init(name)
    }

    @objc func testMethod() {
        wasRun = 1
        log += "testMethod"
    }

    @objc override func setUp() {
        wasRun = nil
        log = "setUp "
    }
}
