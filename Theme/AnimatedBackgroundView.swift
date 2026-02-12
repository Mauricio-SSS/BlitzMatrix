import SwiftUI

struct AnimatedBackgroundView: View {
    var body: some View {
        LinearGradient(colors: [.black, .blue], startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea()
    }
}
