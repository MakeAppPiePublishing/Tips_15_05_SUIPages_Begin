//
//  PizzaHistoryView.swift
//  HuliPizzaPages
//
//  Created by Steven Lipton on 5/16/21.
//

import SwiftUI
import MapKit

struct PizzaHistoryView:View{
    @State var history = HistoryModel().historyItems
    func mapRegion() -> MKCoordinateRegion{
        let center = CLLocationCoordinate2D(latitude: history[id].latitude, longitude: history[id].longitude)
        let span = MKCoordinateSpan(latitudeDelta: 5, longitudeDelta: 5 )
        return MKCoordinateRegion(center: center, span: span)
    }
    var id:Int
    var body:some View{
        VStack {
            HStack {
                Spacer()
                Text("History of " +  history[id].name + " pizza")
                    .font(.headline)
            }
            Map(coordinateRegion: .constant(mapRegion()), annotationItems: [history[id]]) { item in
                MapMarker(coordinate: CLLocationCoordinate2D(latitude: item.latitude, longitude: item.longitude), tint: .blue)
            }
            .frame(height:120)
            .padding(.bottom)
            ScrollView{
                Text(history[id].history)
            }
        }
        
    }
}

struct PizzaHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaHistoryView(id:1)
    }
}
