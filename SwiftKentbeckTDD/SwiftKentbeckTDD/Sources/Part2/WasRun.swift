import Foundation

class WasRun: TestCase {
    var wasRun: Int?
    var wasSetUp: Int?

    override init(_ name: String) {
        wasRun = nil
        wasSetUp = nil

        super.init(name)
    }

    @objc func testMethod() {
        wasRun = 1
    }

    @objc override func setUp() {
        wasSetUp = 1
    }
}
