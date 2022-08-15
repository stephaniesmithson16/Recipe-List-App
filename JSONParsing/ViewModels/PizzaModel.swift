//
//  PizzaModel.swift
//  JSONParsing
//
//  Created by Stephanie Smithson on 8/9/22.
//

import Foundation

class PizzaModel: ObservableObject {
    
    @Published var pizzas = [Pizza]()
    
    init() {
        pizzas = DataService.getData()
    }
}
