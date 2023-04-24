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
                            // with Hashable NavigationLink(value: ...) it's more efficient in performance than NavigationLink destination, label etc.
                            NavigationLink(value: item) {
                                ItemRow(item: item)
                            }
                        }
                        
                    }
                }
            }
            // with Hashable NavigationLink(value: ...) it's better in performance
            .navigationDestination(for: MenuItem.self) { item in
                ItemDetail(item: item)
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

