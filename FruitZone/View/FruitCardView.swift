//
//  FruitCardView.swift
//  FruitZone
//
//  Created by Deep Awasthi on 21/5/24.
//

import SwiftUI

let images: fruitModel = fruitModel(id: 1, title: .apple, image: "apple", price: "10", color: "1")

struct FruitCardView: View {
    let fruits: fruitModel
    var body: some View {
        ZStack{
            VStack(alignment: .leading, spacing: 5){
                Text(fruits.title.rawValue)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .font(.system(.title3))
                    .foregroundColor(.black)
                Text(fruits.price)
                    .font(.system(.title3))
                    .foregroundColor(.black.opacity(0.7))
                Spacer()
            }
            .padding()
            .frame(width: 175, height: 150,alignment: .center)
            .background(Color(fruits.color))
            .cornerRadius(30)
            .padding()
            ZStack{
                Image(fruits.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 110)
            }
            .offset(y: 60)
        }
        .frame(width: 175, height: 250, alignment: .center)
        .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: 5, x: 5, y:5)
    }
}

#Preview {
    FruitCardView(fruits: images)
}
