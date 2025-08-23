import Foundation

class TestCaseTest: TestCase {
    @objc func testRunning() {
        let test = WasRun("testMethod")
        assert(nil == test.wasRun)
        test.run()
        assert(1 == test.wasRun)
    }
}

func doWasRunTest() {
    TestCaseTest("testRunning").run()
}
