import Foundation

struct AppContainer {
    let gameEngine: GameEngine
    let settingsRepository: SettingsRepository
    let storeProvider: StoreProvider

    init(
        gameEngine: GameEngine = DefaultGameEngine(),
        settingsRepository: SettingsRepository = CodableSettingsRepository(),
        storeProvider: StoreProvider = MockStoreProvider()
    ) {
        self.gameEngine = gameEngine
        self.settingsRepository = settingsRepository
        self.storeProvider = storeProvider
    }
}
