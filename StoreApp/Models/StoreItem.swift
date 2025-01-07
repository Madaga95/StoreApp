//
//  StoreItem.swift
//  StoreApp
//
//  Created by Madaga on 06/01/2025.
//

import Foundation

struct StoreItem: Identifiable{
    let id: Int
    let name: String
    let price: Float
    let description: String
    let imageURL: URL?
}

extension StoreItem {
    static let previewItem = StoreItem(
        id: 1,
        name: "Preview Item",
        price: 99.00,
        description: "This is a nice preview item.",
        imageURL: URL(string: "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg")
    )
    
    static let previewItems = [
        StoreItem(
            id: 1,
            name: "Preview Item 1",
            price: 99.00,
            description: "This is a nice preview item #1.",
            imageURL: URL(string: "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg")
        ),
        StoreItem(
            id: 2,
            name: "Preview Item 2",
            price: 199.00,
            description: "This is a nice preview item #2.",
            imageURL: URL(string: "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg")
        ),
        StoreItem(
            id: 3,
            name: "Preview Item 3",
            price: 85.00,
            description: "This is a nice preview item #3.",
            imageURL: URL(string: "https://fakestoreapi.com/img/61mtL65D4cL._AC_SX679_.jpg")
        )
    ]
}
