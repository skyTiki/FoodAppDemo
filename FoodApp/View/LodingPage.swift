//
//  LodingPage.swift
//  FoodApp
//
//  Created by S-wayMock2 on 2021/07/30.
//

import SwiftUI

struct LodingPage: View {
    @Binding var selectedCategory: Category
    var body: some View {
        VStack(spacing: 15) {]
            // 上のヘッダー
            HStack {
                Button(action: {}, label: {
                    Image(systemName: "circle.grid.2x2")
                        .font(.title2)
                        .padding(10)
                        .background(Color.pink.opacity(0.12))
                        .foregroundColor(.pink)
                        .cornerRadius(8)
                })
                Spacer()
                Button(action: {}, label: {
                    Image(systemName: "person")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .padding(10)
                        .background(Color.black.opacity(0.08))
                        .foregroundColor(.pink)
                        .cornerRadius(8)
                })
            }
            .overlay(
                HStack(spacing: 4) {
                    Image(systemName: "mappin.and.ellipse")
                        .resizable()
                        .renderingMode(.template)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 18, height: 18)
                    Text("California US")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
            )
            .padding()
        }
    }
}

struct LodingPage_Previews: PreviewProvider {
    static var previews: some View {
        LodingPage(selectedCategory: .constant(categories[0]))
    }
}
