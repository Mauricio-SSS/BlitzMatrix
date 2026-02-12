import Foundation

protocol GameEngine {
    func score(for taps: Int, multiplier: Int) -> Int
}

struct DefaultGameEngine: GameEngine {
    func score(for taps: Int, multiplier: Int) -> Int {
        max(0, taps) * max(1, multiplier)
    }
}
