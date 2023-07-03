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
   // var profilemap : ProfileMap
    var body: some View {
        
        NavigationView {
            
            Map(coordinateRegion: $region,showsUserLocation: true, annotationItems: userCoor) { place in
                
                
                MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: place.latitude, longitude: place.longitude)) {
                    
                    
                    NavigationLink {
                        SignalementProProfile()
                    } label: {
                        ZStack {
                            VStack {
                                //UIImage.(named: "\(filename).\(extension)")
                          //  profilPic: Image("psychologue1")
                                //profil1: ProfileMap = ProfileMap(profilPic: Image("
                              //  profilemap.profilPic
                                Image("ProfileMap.profilPic")
                                        .resizable()
                                        .frame(width: 75.0, height: 100)
                                        .border(Color("DeepBlue"))
                                        .padding(3)
                                Text(place.prénom)
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
            
        } // end nav view
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
