import Foundation

class TestCaseTest: TestCase {
    var test: WasRun!

    @objc override func setUp() {
        test = WasRun("testMethod")
    }

    @objc func testTemplateMethod() {
        test.run()
        assert("setUp testMethod" == test.log)
    }
}

func doTest() {
    TestCaseTest("testTemplateMethod").run()
}
