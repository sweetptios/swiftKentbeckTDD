import Foundation

class TestCaseTest: TestCase {
    @objc func testRunning() {
        let test: WasRun = WasRun("testMethod")
        test.run()
        assert(1 == test.wasRun)
    }

    @objc func testSetUp() {
        let test = WasRun("testMethod")
        test.run()
        assert(1 == test.wasSetUp)
    }
}

func doTest() {
    TestCaseTest("testRunning").run()
    TestCaseTest("testSetUp").run()
}
