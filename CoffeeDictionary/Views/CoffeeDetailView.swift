//
//  CoffeeDetail.swift
//  CoffeeDictionary
//
//  Created by Tophy on 2023/04/28.
//

import SwiftUI

struct CoffeeDetailView: View {
    var coffee: CoffeeModel
    var body: some View {
        GeometryReader { geo in
            List {
                HStack{
                    Spacer()
                    AsyncImage(url: URL(string: coffee.imageUrl)) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: geo.size.width - 2*50)
                    } placeholder: {
                        Color(.gray)
                            .aspectRatio(1, contentMode: .fit)
                            .frame(width: geo.size.width - 2*50)
                    }
                    Spacer()
                }
                
                Text(coffee.description)
                
                Section {
                    Button {
                        guard let url = URL(string: coffee.wikiLink) else {
                            return
                        }
                        UIApplication.shared.open(url)
                    } label: {
                        Text("위키백과에서 더 자세히 보기")
                    }

                }
            }
            .navigationTitle(coffee.title)
        }
    }
}

struct CoffeeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = CoffeeViewModel()
        CoffeeDetailView(coffee: model.coffeeList[0])
    }
}
