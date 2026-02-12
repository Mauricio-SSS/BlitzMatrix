import XCTest
@testable import BlitzMatrixApp

final class BlitzMatrixTests: XCTestCase {
    func testDefaultGameEngineScoreUsesMultiplier() {
        let engine = DefaultGameEngine()
        XCTAssertEqual(engine.score(for: 5, multiplier: 3), 15)
    }
}
