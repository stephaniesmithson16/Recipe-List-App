//
//  DataService.swift
//  JSONParsing
//
//  Created by Stephanie Smithson on 8/10/22.
//

import Foundation

class DataService {
    
    static func getData() -> [Pizza] {
        
        let stringPath = Bundle.main.path(forResource: "pizzadata", ofType: "json")
        
        guard stringPath != nil else {
            return [Pizza]()
        }
        
        if let path = stringPath {
            
            let url = URL(fileURLWithPath: path)
            
            do {
                let data = try Data.init(contentsOf: url)
                
                let decoder = JSONDecoder()
                
                do {
                    let pizzaData = try decoder.decode([Pizza].self, from: data)
                    
                    for pizza in pizzaData {
                        pizza.id = UUID()
                    }
                    
                    return pizzaData
                }
                catch { print(error) }
            }
            catch {
                print(error)
            }
        }
        
        return [Pizza]()
    }
    
}
