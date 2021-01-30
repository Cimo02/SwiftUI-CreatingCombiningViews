//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Tyler Ciarmataro on 1/28/21.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    // adds all landmarks if showFavoritesOnly is false
    // adds only favorites if showFavoritesOnly is true
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
                    (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        //Models used in Lists conform to Identifiable or use 'id: \.id'
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
