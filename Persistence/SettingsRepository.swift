import Foundation

protocol SettingsRepository {
    func load() -> UserSettings
    func save(_ settings: UserSettings)
}

struct UserSettings: Codable, Equatable {
    var soundEnabled: Bool = true
}

final class CodableSettingsRepository: SettingsRepository {
    private let key = "user.settings"
    private let defaults: UserDefaults

    init(defaults: UserDefaults = .standard) {
        self.defaults = defaults
    }

    func load() -> UserSettings {
        guard let data = defaults.data(forKey: key),
              let settings = try? JSONDecoder().decode(UserSettings.self, from: data) else {
            return UserSettings()
        }
        return settings
    }

    func save(_ settings: UserSettings) {
        if let data = try? JSONEncoder().encode(settings) {
            defaults.set(data, forKey: key)
        }
    }
}
