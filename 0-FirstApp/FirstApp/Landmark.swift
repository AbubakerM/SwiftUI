//
//  Landmark.swift
//  FirstApp
//
//  Created by 118 on 2022/5/31.
//

import Foundation

struct Landmark: Codable, Identifiable {
    var id: Int
    var name: String
    var imageName: String
    var category: String
    var city: String
    var state: String
    var isFeatured: Bool
    var isFavorite: Bool
    var park: String
}
