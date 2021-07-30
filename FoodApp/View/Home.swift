//
//  Home.swift
//  FoodApp
//
//  Created by S-wayMock2 on 2021/07/30.
//

import SwiftUI

struct Home: View {
    @State var selectedTab = "house"
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            CustomTabBar(selectedTab: $selectedTab)
        }
        .ignoresSafeArea()
        .preferredColorScheme(.light)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
