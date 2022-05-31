//
//  LandmarkList.swift
//  FirstApp
//
//  Created by 118 on 2022/5/31.
//

import SwiftUI

struct LandmarkList: View {
    
    @StateObject private var viewModel = LandmarkListViewModel()
    @State var showFavoritesOnly = false
    
    var body: some View {
        List {
            Toggle(isOn: $showFavoritesOnly) {
                Text("Favorites Only")
            }
            
            let landmarks = calculateLandmarkstoDisplay()
            ForEach(landmarks) { landmark in
                LandmarkRow(landmark: landmark)
            }
        }
        .navigationTitle("Landmarks")
    }
    
    private func calculateLandmarkstoDisplay() -> [Landmark] {
        viewModel.landmarks.filter({ landmark in
            return (!showFavoritesOnly || landmark.isFavorite)
        })
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
