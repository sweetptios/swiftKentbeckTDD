import Foundation

class TestCaseTest: TestCase {
    var test: WasRun!

    @objc override func setUp() {
        test = WasRun("testMethod")
    }

    @objc func testRunning() {
        test.run()
        assert(1 == test.wasRun)
    }

    @objc func testSetUp() {
        test.run()
        assert(1 == test.wasSetUp)
    }
}

func doTest() {
    TestCaseTest("testRunning").run()
    TestCaseTest("testSetUp").run()
}
