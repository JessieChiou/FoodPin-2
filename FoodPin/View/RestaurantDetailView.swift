//
//  RestaurantDetailView.swift
//  FoodPin
//
//  Created by 邱子君 on 2024/5/28.
//

import SwiftUI

@available(iOS 16.0, *)
struct RestaurantDetailView: View {
    @Environment(\.dismiss) var dismiss
    
    var restaurant: Restaurant
    
    var body: some View {
        ZStack(alignment:.top) {
            Image(restaurant.image)
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
                .ignoresSafeArea()
            
            Color.black
                .frame(height: 100)
                .opacity(0.8)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding()
                .overlay {
                    VStack(spacing:5){
                        Text(restaurant.name)
                        Text(restaurant.type)
                        HStack {
                            Image(systemName: "mappin.and.ellipse")
                                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            Text(restaurant.location)
                        }
                    }
                    .font(.system(.headline, design: .rounded))
                    .foregroundStyle(.white)
                }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {
                    dismiss()
                }) {
                    Text("\(Image(systemName: "chevron.left")) \(restaurant.name)")
                }
            }
        }
    }
}
@available(iOS 16.0, *)
#Preview {
    RestaurantDetailView(restaurant: Restaurant(name: "Cafe Deadend", type: "Cafe", location: "Hong Kong", image: "cafedeadend", isFavorite: true))
}
