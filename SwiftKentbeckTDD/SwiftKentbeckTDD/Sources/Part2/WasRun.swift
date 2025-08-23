import Foundation

class WasRun: NSObject {
    var wasRun: Int?
    let name: String

    init(_ name: String) {
        self.wasRun = nil
        self.name = name
    }

    @objc func testMethod() {
        self.wasRun = 1
    }

    func run() {
        let selector = NSSelectorFromString(name)
        perform(selector)
    }
}
