//
//  File2.swift
//  Pomplay
//
//  Created by Enzo Toraldo on 22/04/21.
//
import SwiftUI
import MapKit

struct MapExample: View {
    
    @State private var userTrackingMode: MapUserTrackingMode = .follow
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 40.748510,
            longitude: 14.482978
        ),
        span: MKCoordinateSpan(
            latitudeDelta: 0.002,
            longitudeDelta: 0.002
        )
    )

    var body: some View {
            
        ZStack {
            
        Map(
            coordinateRegion: $region,
            interactionModes: MapInteractionModes.all,
            showsUserLocation: true,
            userTrackingMode: $userTrackingMode
        )
        .ignoresSafeArea(.all)
            
           
        RoundedRectangle(cornerRadius: 20)
         .fill(Color.white)
         .frame(width: 120, height: 120, alignment: .center)
            .padding(.top, 680)
            
            RoundedRectangle(cornerRadius: 20)
             .fill(Color.white)
             .frame(width: 100, height: 100, alignment: .center)
                .padding(.top, 680)
                .padding(.leading, 270)
            
            RoundedRectangle(cornerRadius: 20)
             .fill(Color.white)
             .frame(width: 100, height: 100, alignment: .center)
                .padding(.top, 680)
                .padding(.leading, -190)
            
            Image("Fotocamera")
                .resizable()
                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding(.top, 680)
            
    }
 }
}

struct MapExample_Preview: PreviewProvider {
    static var previews: some View {
        MapExample()
        }
    }


//extension GMSMapExample {
//    func mapStyle(withfilename: String, andType type:String) {
//        do {
//            if let styleURL = Bundle.main.url(forResource: name, withExtension: type) {
//                self.mapStyle = try GMSMapStyle(contentsofFileURL: styleURL)
//            }else{
//                NSLog("Unable to find Retro")
//            }
//        }
//
//    }
//
//}
