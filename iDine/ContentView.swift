//
//  ContentView.swift
//  iDine
//
//  Created by Harun Kizilkaya on 31.03.23.
//

import SwiftUI

struct ContentView: View {
    // to decode from .json File
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(menu) { section in
                    Section(section.name) {
                        
                        ForEach(section.items) { item in
                            Text(item.name)
                        }
                        
                    }
                }
            }
            .navigationTitle("Menu")
            .listStyle(.grouped)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

