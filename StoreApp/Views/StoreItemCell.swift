//
//  StoreItemCell.swift
//  StoreApp
//
//  Created by Madaga on 06/01/2025.
//

import SwiftUI

struct StoreItemCell: View {
    
    let item: StoreItem
    
    var body: some View {
        HStack{
            // Preview image
            AsyncImage(url: item.imageURL){image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
            } placeholder: {
                Rectangle()
                    .foregroundStyle(Color(white:0.9))
            }
            .frame(width: 80, height: 80)
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: 8)
                    .stroke(lineWidth: 1)
                    .foregroundStyle(Color(white: 0.8))
            }
            
            
            // Titre + Descriptin + Prix
            VStack(alignment: .leading, spacing: 8) {
                Text(item.name)
                    .font(.system(size: 22, weight: .bold))
                    .lineLimit(1)
                Text(item.description)
                    .font(.system(size: 18, weight: .light))
                    .foregroundStyle(Color(white: 0.5))
                    .lineLimit(2)
                Text("\(String(format: "%.2f", item.price)) €")
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
}

struct StoreItemCell_Previews: PreviewProvider {
    static var previews: some View {
        StoreItemCell(item: .previewItem)
            .padding()
    }
}
