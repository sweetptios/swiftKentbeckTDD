import Foundation

class TestCase: NSObject {
    let name: String

    init(_ name: String) {
        self.name = name
    }

    func run() {
        let selector = NSSelectorFromString(name)
        perform(selector)
    }
}
