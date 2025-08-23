import Foundation

class WasRun: TestCase {
    private(set) var log: String

    override init(_ name: String) {
        log = ""

        super.init(name)
    }

    @objc func testMethod() {
        log += "testMethod "
    }

    @objc func testBrokenMethod() throws {
        throw NSError()
    }

    @objc override func setUp() {
        log = "setUp "
    }

    @objc override func tearDown() {
        log += "tearDown "
    }
}
