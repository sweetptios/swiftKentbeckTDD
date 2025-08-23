import Foundation

class TestCaseTest: TestCase {
    var test: WasRun!

    @objc func testTemplateMethod() {
        test = WasRun("testMethod")
        test.run()
        assert("setUp testMethod tearDown " == test.log)
    }
}

func doTest() {
    TestCaseTest("testTemplateMethod").run()
}
