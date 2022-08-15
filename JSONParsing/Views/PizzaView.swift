//
//  PizzaView.swift
//  JSONParsing
//
//  Created by Stephanie Smithson on 8/12/22.
//

import SwiftUI

struct PizzaView: View {
    let pizza:Pizza
    
    var body: some View {
        VStack{
            NavigationView{
                VStack {
                    Image(pizza.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Text(pizza.toppings.formatted())
                    Spacer()
                }.navigationTitle(pizza.name)
            }
        }
        
    }
}

struct PizzaView_Previews: PreviewProvider {
    static var previews: some View {
        let pizzaModel = PizzaModel()
        
        PizzaView(pizza: pizzaModel.pizzas[0])
    }
}
