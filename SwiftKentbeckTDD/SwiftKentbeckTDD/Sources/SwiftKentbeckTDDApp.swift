import SwiftUI

@main
struct SwiftKentbeckTDDApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .task {
                    doTest()
                }
        }
    }
}
