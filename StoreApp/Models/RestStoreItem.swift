//
//  RestStoreItem.swift
//  StoreApp
//
//  Created by Madaga on 06/01/2025.
//

import Foundation


struct RestStoreItem: Decodable{
    let id: Int
    let title: String
    let price: Float
    let description: String
    let image: String
}
