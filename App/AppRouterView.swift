import SwiftUI

struct AppRouterView: View {
    let container: AppContainer

    var body: some View {
        NavigationStack {
            HomeView()
        }
    }
}
