//
//  Home.swift
//  FoodApp
//
//  Created by S-wayMock2 on 2021/07/30.
//

import SwiftUI

struct Home: View {
    @State var selectedTab = "house"
    @State var categoriyList = categories
    var body: some View {
        VStack(spacing: 0) {
            LodingPage(selectedCategory: $categoriyList[0])
            Spacer()
            
            CustomTabBar(selectedTab: $selectedTab)
        }
        .ignoresSafeArea(edges: .bottom)
        .preferredColorScheme(.light)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}
