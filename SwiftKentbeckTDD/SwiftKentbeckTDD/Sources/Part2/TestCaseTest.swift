import Foundation

class TestCaseTest: TestCase {
    var test: WasRun!
    var result: TestResult!

    override func setUp() {
        result = TestResult()
    }

    @objc func testTemplateMethod() {
        test = WasRun("testMethod")
        test.run(result)
        assert("setUp testMethod tearDown " == test.log)
    }

    @objc func testResult() {
        test = WasRun("testMethod")
        test.run(result)
        assert("1 run, 0 failed" == result.summary())
    }

    @objc func testFailedResult() {
        test = WasRun("testBrokenMethod")
        test.run(result)
        assert("1 run, 1 failed" == result.summary())
    }

    @objc func testFailedResultFormatting() {
        result.testStarted()
        result.testFailed()
        assert("1 run, 1 failed" == result.summary())
    }

    @objc func testSuite() {
        let suite = TestSuite()
        suite.add(WasRun("testMethod"))
        suite.add(WasRun("testBrokenMethod"))
        suite.run(result)
        assert("2 run, 1 failed" == result.summary())
    }
}

func doTest() {
    let suite = TestSuite()
    suite.add(TestCaseTest("testTemplateMethod"))
    suite.add(TestCaseTest("testResult"))
    suite.add(TestCaseTest("testFailedResultFormatting"))
    suite.add(TestCaseTest("testFailedResult"))
    suite.add(TestCaseTest("testSuite"))
    let result = TestResult()
    suite.run(result)
    print(result.summary())
}
