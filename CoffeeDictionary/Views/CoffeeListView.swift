//
//  CoffeeListView.swift
//  CoffeeDictionary
//
//  Created by Tophy on 2023/04/28.
//

import SwiftUI

struct CoffeeListView: View {
    var data = CoffeeViewModel()
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(data.coffeeList, id: \.id) { item in
                    NavigationLink {
                        CoffeeDetailView(coffee: item)
                    } label: {
                        CoffeeListItemView(coffee: item)
                    }
                }
            }
            .navigationTitle("Coffee")
        }
    }
}

struct CoffeeListView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeListView()
    }
}
