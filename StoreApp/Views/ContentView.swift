//
//  ContentView.swift
//  StoreApp
//
//  Created by Madaga on 06/01/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var items: [StoreItem] = StoreItem.previewItems
    private let storeItemRepository = StoreItemRepository() // 1 - Création d'une instance de répo
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    ForEach(items) { item in
                        StoreItemCell(item: item)
                    }
                }
                .padding()
            }
            .navigationTitle("My Cart")
        }
        .onAppear {
            Task {
                let restItems = await storeItemRepository.getAllProducts()
                
                self.items = []
                
                for restItem in restItems {
                    let newItem = StoreItemMapper.map(restStoreItem: restItem)
                    self.items.append(newItem)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
