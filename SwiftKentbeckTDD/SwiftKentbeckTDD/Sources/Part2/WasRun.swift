import Foundation

class WasRun: NSObject {
    let wasRun: Int?
    let name: String

    init(_ name: String) {
        self.wasRun = nil
        self.name = name
    }

    @objc func testMethod() {}

    func run() {
        let selector = NSSelectorFromString(name)
        perform(selector)
    }
}
