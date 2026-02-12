import Foundation
import StoreKit

@available(iOS 15.0, *)
struct StoreKitStoreProvider: StoreProvider {
    func fetchProducts() async throws -> [StoreProduct] {
        let products = try await Product.products(for: ["com.blitzmatrix.removeads"])
        return products.map { product in
            StoreProduct(id: product.id, displayName: product.displayName, price: product.displayPrice)
        }
    }
}
