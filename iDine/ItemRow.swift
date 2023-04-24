//
//  ItemRow.swift
//  iDine
//
//  Created by Harun Kizilkaya on 24.04.23.
//

import SwiftUI

struct ItemRow: View {
    let item: MenuItem
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
            
            VStack(alignment: .leading) {
                Text(item.name)
                Text("$\(item.price)")
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        // dummy for showing preview (created in the Menu Model)
        ItemRow(item: MenuItem.example)
    }
}
