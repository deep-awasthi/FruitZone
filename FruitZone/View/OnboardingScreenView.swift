//
//  OnboardingScreenView.swift
//  FruitZone
//
//  Created by Deep Awasthi on 21/5/24.
//

import SwiftUI

struct OnboardingScreenView: View {
    var body: some View {
        NavigationView{
            VStack(spacing: 30){
                Spacer()
                Image("img")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .padding()
                VStack(alignment: .leading, spacing: 10){
                    Text("Order Your Favorite Fruits")
                        .fontWeight(.bold)
                        .font(.system(.largeTitle))
                    Text("Get fresh fruits delivered to your hostel")
                        .font(.system(.title3))
                        .foregroundColor(.black.opacity(0.7))
                }
                Spacer()
                NavigationLink(destination: HomeScreen()) {
                    RoundedRectangle(cornerRadius: 12)
                        .fill(Color("6"))
                        .frame(width: 280, height: 60, alignment: .trailing)
                        .overlay(
                            HStack(spacing: 10){
                                Text("Next")
                                    .font(.title)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.black)
                                    .fontWeight(.bold)
                            }
                        )
                }
                Spacer()
            }
            
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    OnboardingScreenView()
}
