import Foundation

class TestCaseTest: TestCase {
    var test: WasRun!

    @objc func testTemplateMethod() {
        test = WasRun("testMethod")
        test.run()
        assert("setUp testMethod tearDown " == test.log)
    }

    @objc func testResult() {
        test = WasRun("testMethod")
        let result = test.run()
        assert("1 run, 0 failed" == result.summary())
    }

    @objc func testFailedResult() {
        test = WasRun("testBrokenMethod")
        let result = test.run()
        assert("1 run, 1 failed" == result.summary())
    }
}

func doTest() {
    _ = TestCaseTest("testTemplateMethod").run()
    _ = TestCaseTest("testResult").run()
    _ = TestCaseTest("testFailedResult").run()
}
