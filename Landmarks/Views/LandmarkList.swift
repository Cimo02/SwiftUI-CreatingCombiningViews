//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Tyler Ciarmataro on 1/28/21.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        //Models used in Lists conform to Identifiable or use 'id: \.id'
        NavigationView {
            List(landmarks) { landmark in
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
