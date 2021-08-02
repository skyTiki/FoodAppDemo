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
        VStack(spacing: 15) {
            // 上のヘッダー部分
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
            
            //
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(alignment: .leading, spacing: 15, content: {
                    
                    HStack(spacing: 20) {
                        VStack(alignment: .leading, spacing: 12, content: {
                            (
                                Text("The Fastest in Delivery")
                                    +
                                    Text("Food")
                                    .foregroundColor(.pink)
                            )
                            .font(.title2)
                            .fontWeight(.bold)
                            
                            Button(action: {}, label: {
                                Text("Order Now")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                                    .padding(.vertical, 10)
                                    .padding(.horizontal)
                                    .background(Color.pink)
                                    .clipShape(Capsule())
                            })
                            
                        })
                        .padding(.leading, 3)
                        
                        Spacer(minLength: 0)
                        
                        Image("delivery_man")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: getRect().width / 3)
                        
                    }
                    .padding()
                    .background(Color("lightyellow"))
                    .cornerRadius(15)
                    .padding(.horizontal)
                    
                    // MARK: - ボタンの横スクロール
                    Text("Categories")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding([.horizontal, .top])
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack {
                            ForEach(categories) { category in
                                HStack(spacing: 15) {
                                    Image(category.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 18, height: 18)
                                        .padding(5)
                                        .background(selectedCategory.id == category.id ? Color.white : Color.clear)
                                        .clipShape(Circle())
                                    
                                    
                                    Text(category.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(selectedCategory.id == category.id ? .white : .black)
                                }
                                .padding(.vertical, 12)
                                .padding(.horizontal)
                                .background(selectedCategory.id == category.id ? Color.pink : Color.gray.opacity(0.08))
                                .clipShape(Capsule())
                                .onTapGesture {
                                    withAnimation(.spring()) {
                                        selectedCategory = category
                                    }
                                }
                                
                            }
                        }
                        .padding(.horizontal)
                        .padding(.top, 10)
                    })
                    
                    HStack {
                        Text("Popular Now")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                        
                            HStack {
                                Text("Viwe All")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.pink)
                                
                                Image(systemName: "chevron.right")
                                    .font(.footnote)
                                    .foregroundColor(.white)
                                    .padding(.vertical, 4)
                                    .padding(.horizontal, 6)
                                    .background(Color.pink)
                                    .cornerRadius(5)
                            }
                        })
                        
                    }
                    .padding(.horizontal)
                    .padding(.bottom, 10)
                })
            })
        }
    }
}

struct LodingPage_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
