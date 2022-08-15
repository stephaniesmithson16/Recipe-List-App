//
//  ContentView.swift
//  JSONParsing
//
//  Created by Stephanie Smithson on 8/9/22.
//

import SwiftUI

struct PizzaModelView: View {
    
    @ObservedObject var pizzaModel = PizzaModel()
    
    var body: some View {

        NavigationView {
                List(pizzaModel.pizzas, id: \.id) { p in
                    VStack {
                        NavigationLink(
                            destination: PizzaView(pizza: p),
                            label:  {
                                HStack {
                                    Image(p.image)
                                        .resizable()
                                        .frame(width: 50, height: 50, alignment: .center)
                                        .scaledToFill()
                                    VStack(alignment: .leading) {
                                        Text(p.name)
                                            .font(.title3)
                                            .fontWeight(.semibold)
                                        Text(p.toppings.formatted())
                                            .font(.caption)
                                            .fontWeight(.regular)
                                    }
                                    
                                    Spacer()
                                }
                            })
                        Spacer()
                    }.frame(alignment: .top)
                }.navigationTitle("Pizzas").frame(alignment: .top)
            }.frame(alignment: .top)
        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaModelView()
    }
}
