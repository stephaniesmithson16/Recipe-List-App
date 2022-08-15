//
//  Pizza.swift
//  JSONParsing
//
//  Created by Stephanie Smithson on 8/9/22.
//

import Foundation

class Pizza: Identifiable, Decodable {
    
    var id:UUID?
    var name = ""
    var toppings = [String]()
    var image = ""
}
