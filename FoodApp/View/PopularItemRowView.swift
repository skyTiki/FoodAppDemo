//
//  PopularItemRowView.swift
//  FoodApp
//
//  Created by S-wayMock2 on 2021/08/02.
//

import SwiftUI

struct PopularItemRowView: View {
    var item: Popular
    
    var body: some View {
        VStack(spacing: 0) {
            Image(systemName: "flame")
                .font(.footnote)
                .foregroundColor(.red)
                .padding(8)
                .background(Color.orange.opacity(0.1))
                .clipShape(Circle())
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(-10)
            
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: getRect().width/3)
                .padding(.top, 6)
            
            Text(item.title)
                .fontWeight(.bold)
                .padding(.top, 20)
            
            Text(item.description)
                .font(.footnote)
                .foregroundColor(.gray)
            
            (
                Text("$ ")
                    .font(.footnote)
                    .foregroundColor(.pink)
                +
                    Text(item.price)
                    .font(.title2)
                    .foregroundColor(.black)
            )
            .fontWeight(.bold)
            .padding(.top, 8)
            
        }
        .padding(.horizontal, 30)
        .padding(.vertical)
        .background(Color.white)
        .cornerRadius(25)
        .shadow(color: Color.black.opacity(0.04), radius: 5, x: 5, y: 5)
    }
}

struct PopularItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
