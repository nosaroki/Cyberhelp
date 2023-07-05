//
//  MapView.swift
//  CyberHelp
//
//  Created by apprenant96 on 30/06/2023.
//

//
//  Map.swift
//  CyberHelp
//
//  Created by apprenant96 on 29/06/2023.
//
import SwiftUI
import MapKit
import CoreLocation

struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.854 , longitude: 2.382322), span: MKCoordinateSpan(latitudeDelta: 0.007, longitudeDelta: 0.007))
    @State var i = 1
    var body: some View {
        Map(coordinateRegion: $region,showsUserLocation: true, annotationItems: userCoor) { place in
            
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: place.latitude, longitude: place.longitude)) {
                
                NavigationLink {
                    SignalementProProfile2()
                } label: {
                    ZStack {
                        VStack {
                            ZStack{
                                Capsule()
                                    .fill(Color("DeepBlue"))
                                    .frame(width: 72, height: 102)
                                Image(place.profilPic)
                                    .resizable()
                                //    .aspectRatio(contentMode: .fit)
                                    .frame(width: 75.0, height: 100)
                                    .padding(3)
                                    .mask(
                                        Capsule()
                                            .fill(.blue)
                                            .frame(width: 70, height: 100)
                                    )
                            }
                            Text(place.prénom)
                                .fontWeight(.bold)
                                .foregroundColor(Color("DeepBlue"))
                                .tint(.red)
                                .background()
                            /* VStack {
                             Image(systemName: "mappin.circle.fill")
                             .font(.title)
                             Image(systemName: "arrowtriangle.down.fill")
                             .padding(.top, -20.0)
                             }
                             .foregroundColor(.pink)*/
                        } // end vstack
                        
                    } // end zstack
                }
                
                
                
                
            }
            
        } // end map
        
    //} // end nav view
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
