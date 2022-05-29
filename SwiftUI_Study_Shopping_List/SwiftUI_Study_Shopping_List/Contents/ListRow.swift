//
//  ListRow.swift
//  SwiftUI_Study_Shopping_List
//
//  Created by 최광호 on 2022/05/25.
//

import SwiftUI

struct ListRow: View {
    @EnvironmentObject var viewModel: ViewModel
    @Binding var model: Model

    var body: some View {
        GroupBox {
            HStack() {
                Button {
                    viewModel.clickedCheckButton(model.id)
                } label: {
                    let imageName = !model.checkBox ? "checkmark.square" : "checkmark.square.fill"
                    Image(systemName: imageName)
                        .tint(.black)
                }
                Text(model.shoppingTitle)
                Spacer()
                Button {
                    viewModel.clickedStarButton(model.id)
                } label: {
                    let imageName = !model.starBox ? "star" : "star.fill"
                    Image(systemName: imageName)
                        .tint(.black)
                }
            }
            .background(.clear)
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static let viewModel = ViewModel()
    static var previews: some View {
        ListRow(model: .constant(Model(shoppingTitle: "", checkBox: false, starBox: false)))
            .previewLayout(.sizeThatFits)
            .environmentObject(viewModel)
    }
}
