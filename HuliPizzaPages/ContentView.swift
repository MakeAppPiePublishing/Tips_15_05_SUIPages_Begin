//
//  ContentView.swift
//  HuliPizzaPages
//
//  Created by Steven Lipton on 5/16/21.
//

import SwiftUI

struct ContentView: View {
    @State var menu = MenuModel().menu
    var body: some View {
        VStack{
            HStack {
                Text("Huli Pizza Company")
                    .font(.title)
                    .padding(.leading)
                Spacer()
            }
            ScrollView{
                ForEach(0..<menu.count){ id in
                    RowView(id: .constant(id))
                        .padding()
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
