//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Tyler Ciarmataro on 1/28/21.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = false;
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
                    (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        //Models used in Lists conform to Identifiable or use 'id: \.id'
        NavigationView {
            List(filteredLandmarks) { landmark in
                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
