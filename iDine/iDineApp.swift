//
//  iDineApp.swift
//  iDine
//
//  Created by Harun Kizilkaya on 31.03.23.
//

import SwiftUI

@main
struct iDineApp: App {
    // will hold order alive to the entire lifetime of the app
    @StateObject var order = Order()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(order)
        }
    }
}
