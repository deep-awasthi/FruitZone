//
//  HomeScreen.swift
//  FruitZone
//
//  Created by Deep Awasthi on 21/5/24.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        ZStack{
            VStack(alignment: .leading, spacing: 10){
                HStack{
                    Image(systemName: "line.3.horizontal")
                    Spacer()
                    Image(systemName: "cart.badge.plus")
                }
                .font(.system(.title3))
                Text("Hey")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.bold)
                Text("Order fresh fruits that you want")
                RoundedRectangle(cornerRadius: 15)
                    .fill(.gray.opacity(0.2))
                    .overlay(
                        HStack{
                            Image(systemName: "magnifyingglass")
                            Text("Search")
                                .foregroundColor(.gray)
                                .multilineTextAlignment(.leading)
                            Spacer()
                        }
                            .padding()
                    )
                    .frame(width: 350, height: 50, alignment: .center)
                Text("Top Selling")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                TopSellingView()
                Text("Near You")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                NearYouView()
                Spacer()
            }
            .ignoresSafeArea(.all)
            .padding()
        }
        .navigationBarBackButtonHidden(true)
    }
}


#Preview {
    HomeScreen()
}
