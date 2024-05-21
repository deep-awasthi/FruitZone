//
//  DetailsView.swift
//  FruitZone
//
//  Created by Deep Awasthi on 21/5/24.
//

import SwiftUI

struct RoundedCornerShape: Shape{
    let corner: UIRectCorner
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path{
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}

struct Counter: View {
    @State var count = 0
    var body: some View {
        HStack(spacing: 25){
            Button {
                count = count + 1;
            } label: {
                Image(systemName: "plus")
            }
            Text("\(count)")
            Button {
                if(count>0){
                    count = count - 1;
                }
            } label: {
                Image(systemName: "minus")
            }
        }
    }
}

struct DetailsView: View {
    @State var fruit: fruitTitle
    var body: some View {
        VStack(alignment: .leading, spacing: 25){
            Image("bg")
                .resizable()
                .ignoresSafeArea()
                .clipShape(RoundedCornerShape.init(corner: [.bottomLeft, .bottomRight], radius: 50))
                .frame(width: .infinity, height: .infinity, alignment: .top)
                .shadow(color: .gray, radius:5, x: 5, y: 5)
                .overlay(
                    Image("\(fruit.rawValue)")
                        .resizable()
                        .frame(width: 250, height: 250, alignment: .center)
                        .offset(y: 20)
                        .shadow(color: .gray, radius: 5, x: 5, y: 5)
                )
            Spacer()
            Text("\(fruit.rawValue) - Medium")
                .fontWeight(.medium)
                .font(.system(.title))
                .padding(.horizontal)
                .textCase(.uppercase)
            Text("Each (500g - 700g)")
                .padding(.horizontal)
            Text("Organic agriculture is intended to produce high quality, nutritious food that contributes to preventive health care and well-being. In view of this, it avoids the use of fertilizers, pesticides, animal drugs and food additives that may have adverse health effects.")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .lineLimit(6)
                .padding(.horizontal)
            HStack{
                RoundedRectangle(cornerRadius: 8)
                    .fill(Color("bgColor"))
                    .opacity(0.5)
                    .overlay(
                        Image(systemName: "hourglass")
                    )
                    .font(.system(size: 40))
                    .frame(width: 50, height: 50)
                VStack(alignment: .leading, spacing: 5){
                    Text("Delivery Time")
                    Text("25 - 40 Min")
                }
            }
            .padding(.horizontal)
            
            HStack{
                Text("$1.99")
                    .fontWeight(.medium)
                    .font(.title)
                    .padding(.horizontal)
                Spacer()
                Counter()
                    .foregroundColor(.black)
                    .padding()
                    .background(Color("bgColor").opacity(0.3))
                    .frame(width: 130, height: 40)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .padding(.horizontal)
            }
            
            Image("bg")
                .resizable()
                .frame(width: 350, height: 50, alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .shadow(color: .gray, radius: 5, x: 5, y: 5)
                .overlay(
                    Text("Add To Cart")
                        .font(.system(.title3))
                        .fontWeight(.medium)
                )
                .padding()
        }
    }
}

#Preview {
    DetailsView(fruit: .orange)
}
