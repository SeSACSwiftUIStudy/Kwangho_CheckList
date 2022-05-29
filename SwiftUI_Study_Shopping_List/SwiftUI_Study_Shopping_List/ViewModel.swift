//
//  ViewModel.swift
//  SwiftUI_Study_Shopping_List
//
//  Created by 최광호 on 2022/05/27.
//

import Foundation

struct Model: Identifiable {
    var shoppingTitle: String
    var checkBox: Bool
    var starBox: Bool
    
    let id = UUID()
}

class ViewModel: ObservableObject {
    
    @Published var input = [Model]()
    
    // text 입력
    let textFieldPlaceholder = "목록을 입력해주세요"
    let buttonTitle = "추가"
    let navigationTitle = "쇼핑추가 리스트"
    
    func addData(_ text: String) {
        input.append(Model(shoppingTitle: text, checkBox: false, starBox: false))
    }
    
    func deleteData(_ offset: IndexSet) {
        if let index = offset.first {
            input.remove(at: index)
        }
    }
    
    func clickedCheckButton(_ id: UUID) {
        var data = input.filter { $0.id == id }.first!
        data.checkBox = !data.checkBox
        
        let arrayPlace = input.indices.filter { input[$0].id == id }
        arrayPlace.forEach {input[$0] = data}
    }
    
    func clickedStarButton(_ id: UUID) {
        var data = input.filter { $0.id == id }.first!
        data.starBox = !data.starBox
        
        let arrayPlace = input.indices.filter { input[$0].id == id }
        arrayPlace.forEach {input[$0] = data}
    }
    
    
}
