//
//  LandmarkListViewModel.swift
//  FirstApp
//
//  Created by 118 on 2022/5/31.
//

import Foundation

class LandmarkListViewModel: ObservableObject {
    
    @Published var landmarks: [Landmark] = ResourceLoader().loadLandmarks()
    
}
