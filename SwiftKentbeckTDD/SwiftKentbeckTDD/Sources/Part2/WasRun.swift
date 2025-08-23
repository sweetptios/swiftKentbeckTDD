import Foundation

class WasRun: TestCase {
    var wasRun: Int?
    var wasSetUp: Int?

    override init(_ name: String) {
        wasSetUp = nil

        super.init(name)
    }

    @objc func testMethod() {
        wasRun = 1
    }

    @objc override func setUp() {
        wasRun = nil
        wasSetUp = 1
    }
}
