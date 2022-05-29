//
//  ContentView.swift
//  SwiftUI_Study_Shopping_List
//
//  Created by 최광호 on 2022/05/24.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                AddTextFieldButton()
                List {
                    ForEach(viewModel.input) { model in
                        ListRow(model: .constant(model))
                    }.onDelete(perform: viewModel.deleteData(_:))
                }
                Spacer()
            }
            .navigationTitle(viewModel.navigationTitle)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static let viewModel = ViewModel()
    static var previews: some View {
        ContentView()
            .environmentObject(viewModel)
    }
}
