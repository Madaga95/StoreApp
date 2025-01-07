//
//  StoreItemMapper.swift
//  StoreApp
//
//  Created by Madaga on 06/01/2025.
//

import Foundation

class StoreItemMapper {
    static func map(restStoreItem: RestStoreItem) -> StoreItem {
        return StoreItem(
            id: restStoreItem.id,
            name: restStoreItem.title,
            price: restStoreItem.price,
            description: restStoreItem.description,
            imageURL: URL(string: restStoreItem.image)
        )
    }
}
