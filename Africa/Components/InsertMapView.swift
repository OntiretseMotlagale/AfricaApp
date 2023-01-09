//
//  InsertMapView.swift
//  Africa
//
//  Created by Ontiretse Motlagale on 2022/12/12.
//

import SwiftUI
import MapKit

struct InsertMapView: View {
    
    //MARK - PROPERTIES
    @State private var mapRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    //MARK - BODy
    var body: some View {
        Map(coordinateRegion: $mapRegion)
            .overlay(
                NavigationLink(destination: MapView()){
                    HStack {
                        Image(systemName: "mappin.circle")
                            .imageScale(.large)
                            .foregroundColor(.white)
                        
                        Text("Location")
                            .foregroundColor(.accentColor)
                            .fontWeight(.bold)
                    } //: HSTACK
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black
                            .cornerRadius(8)
                            .opacity(0.2)
                    )
                }
                    .padding(12) , alignment: .topTrailing
            )
            .frame(height: 257)
            .cornerRadius(12)
    }
}

struct InsertMapView_Previews: PreviewProvider {
    static var previews: some View {
        InsertMapView()
    }
}
