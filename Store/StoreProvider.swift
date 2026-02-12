import Foundation

struct StoreProduct: Identifiable, Equatable {
    let id: String
    let displayName: String
    let price: String
}

protocol StoreProvider {
    func fetchProducts() async throws -> [StoreProduct]
}

struct MockStoreProvider: StoreProvider {
    func fetchProducts() async throws -> [StoreProduct] {
        [StoreProduct(id: "com.blitzmatrix.removeads", displayName: "Remove Ads", price: "$1.99")]
    }
}
