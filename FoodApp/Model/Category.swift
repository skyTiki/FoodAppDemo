//
//  Category.swift
//  FoodApp
//
//  Created by S-wayMock2 on 2021/07/30.
//

import SwiftUI

struct Category: Identifiable {
    var id: String = UUID().uuidString
    var image: String
    var title: String
}


var categories = [
    Category(image: "burger", title: "Burger"),
    Category(image: "pizza", title: "Pizza"),
    Category(image: "sandwich", title: "Sandwich"),
    Category(image: "cupcake", title: "Cupcake's")
]
