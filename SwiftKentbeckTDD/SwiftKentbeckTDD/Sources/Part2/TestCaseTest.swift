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

    @objc func testFailedResultFormatting() {
        let result = TestResult()
        result.testStarted()
        result.testFailed()
        assert("1 run, 1 failed" == result.summary())
    }

    @objc func testSuite() {
        let suite = TestSuite()
        suite.add(WasRun("testMethod"))
        suite.add(WasRun("testBrokenMethod"))
        let result = suite.run()
        assert("2 run, 1 failed" == result.summary())
    }
}

func doTest() {
    print(TestCaseTest("testTemplateMethod").run().summary())
    print(TestCaseTest("testResult").run().summary())
    print(TestCaseTest("testFailedResultFormatting").run().summary())
    print(TestCaseTest("testFailedResult").run().summary())
}
