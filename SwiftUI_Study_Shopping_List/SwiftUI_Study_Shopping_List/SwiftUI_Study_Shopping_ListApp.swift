//
//  SwiftUI_Study_Shopping_ListApp.swift
//  SwiftUI_Study_Shopping_List
//
//  Created by 최광호 on 2022/05/24.
//

import SwiftUI

@main
struct SwiftUI_Study_Shopping_ListApp: App {
    let viewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
