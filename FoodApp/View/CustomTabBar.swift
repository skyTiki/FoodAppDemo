//
//  CustomTabBar.swift
//  FoodApp
//
//  Created by S-wayMock2 on 2021/07/30.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var selectedTab: String
    @Namespace var animation
    var body: some View {
        HStack(spacing: 0) {
            TabBarButton(animation: animation, image: "house", selectedTab: $selectedTab)
            
            TabBarButton(animation: animation, image: "heart", selectedTab: $selectedTab)
            
            
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 24, height: 24)
                    .foregroundColor(.white)
                    .padding(20)
                    .background(Color.pink)
                    .clipShape(Circle())
                    
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: 5, y: 5)
                    .shadow(color: Color.black.opacity(0.08), radius: 5, x: -5, y: -5)
            })
            .offset(y: -30)
            
            TabBarButton(animation: animation, image: "bell", selectedTab: $selectedTab)
            
            TabBarButton(animation: animation, image: "cart", selectedTab: $selectedTab)
        }
        .padding(.top)
        .padding(.bottom, 10)
        .background(Color.white)
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(selectedTab: .constant("house"))
    }
}


struct TabBarButton: View {
    
    var animation: Namespace.ID
    var image: String
    @Binding var selectedTab: String
    
    
    var body: some View {
        Button(action: {
            withAnimation(.spring()) {
                selectedTab = image
            }
        }, label: {
            VStack(spacing: 8) {
                Image(systemName: image)
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 28, height: 28)
                    .foregroundColor(selectedTab == image ? Color.pink : Color.gray.opacity(0.5))
                
                if selectedTab == image {
                    Circle()
                        .fill(Color.pink)
                        .matchedGeometryEffect(id: "TAB", in: animation)
                        .frame(width: 8, height: 8)
                    
                }
            }
            .frame(maxWidth: .infinity)
        })
    }
}
