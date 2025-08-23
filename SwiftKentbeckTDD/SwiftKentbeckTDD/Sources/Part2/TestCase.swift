import Foundation

class TestCase: NSObject {
    let name: String

    init(_ name: String) {
        self.name = name
    }

    @objc func setUp() {}
    
    @objc func tearDown() {}

    func run() {
        setUp()
        let selector = NSSelectorFromString(name)
        perform(selector)
        tearDown()
    }
}
