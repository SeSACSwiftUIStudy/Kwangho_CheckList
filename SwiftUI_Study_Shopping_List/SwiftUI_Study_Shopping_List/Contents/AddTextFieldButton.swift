//
//  AddTextFieldButton.swift
//  SwiftUI_Study_Shopping_List
//
//  Created by 최광호 on 2022/05/26.
//

import SwiftUI

struct AddTextFieldButton: View {
    @EnvironmentObject var viewModel: ViewModel
    @State private var inputText: String = ""
    
    var body: some View {
        HStack {
            TextField(viewModel.textFieldPlaceholder,text: $inputText)
            Button {
                viewModel.addData(inputText)
                inputText = ""
            } label: {
                Text(viewModel.buttonTitle)
            }
            .scenePadding(.horizontal)
            .foregroundColor(.black)
            .background(Color(uiColor: .systemGray4))
            .cornerRadius(15)
        }
        .padding()
        .background(Color(uiColor: .systemGray5))
        .cornerRadius(10)
        .padding()
    }
}

struct AddTextFieldButton_Previews: PreviewProvider {
    static let viewModel = ViewModel()
    static var previews: some View {
        AddTextFieldButton()
            .previewLayout(.sizeThatFits)
            .environmentObject(viewModel)
    }
}
