func doWasRunTest() {
    let test = WasRun("testMethod")
    print(test.wasRun)
    test.run()
    print(test.wasRun)
}
