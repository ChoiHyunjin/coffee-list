//
//  CoffeeListItemView.swift
//  CoffeeDictionary
//
//  Created by Tophy on 2023/04/28.
//

import SwiftUI

struct CoffeeListItemView: View {
    private let width = CGFloat(80)
    var coffee: CoffeeModel
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(coffee.title).font(.title3).bold().padding(.bottom, 10)
                Text(coffee.description).lineLimit(3)
            }
            Spacer()
            
            AsyncImage(url: URL(string: coffee.imageUrl)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: width)
            } placeholder: {
                Color(.gray)
                    .frame(width: width, height: width)
            }
        }
    }
}

struct CoffeeListItemView_Previews: PreviewProvider {
    static var previews: some View {
        let model = CoffeeViewModel()
        CoffeeListItemView(coffee: model.coffeeList[0])
    }
}
