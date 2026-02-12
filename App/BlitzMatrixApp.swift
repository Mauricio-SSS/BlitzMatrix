import SwiftUI

@main
struct BlitzMatrixApp: App {
    private let appContainer = AppContainer()

    var body: some Scene {
        WindowGroup {
            AppRouterView(container: appContainer)
        }
    }
}
