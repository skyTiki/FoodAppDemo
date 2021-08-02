//
//  Popular.swift
//  FoodApp
//
//  Created by S-wayMock2 on 2021/08/02.
//

import SwiftUI

struct Popular: Identifiable {
    var id = UUID().uuidString
    var title: String
    var description: String
    var image: String
    var price: String
}

var popularItems = [
    Popular(title: "Tomato Buger", description: "Fresh tomato burger", image: "burger02", price: "6.59"),
    Popular(title: "Beef Buger", description: "100%Beef burger", image: "burger03", price: "7.54")
]
