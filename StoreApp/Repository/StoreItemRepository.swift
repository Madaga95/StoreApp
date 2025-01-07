//
//  StoreItemRepository.swift
//  StoreApp
//
//  Created by Madaga on 06/01/2025.
//

import Foundation

class StoreItemRepository {
    
    func getAllProducts() async -> [RestStoreItem] {
        let url = URL(string: "https://fakestoreapi.com/products")!
                
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                let restStoreItems = try JSONDecoder().decode([RestStoreItem].self, from: data)
                return restStoreItems
            } catch {
                return []
            }
    }
}
