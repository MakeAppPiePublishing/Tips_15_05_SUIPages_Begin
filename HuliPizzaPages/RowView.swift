//
//  RowView.swift
//  HuliPizzaPages
//
//  Created by Steven Lipton on 5/16/21.
//

import SwiftUI

struct RowView: View {
    @State var menu = MenuModel().menu
    @Binding var id:Int
    var body: some View {
        HStack{
            Image("\(id)_100w")
                .cornerRadius(10)
                .shadow(radius: 5)
            
            VStack {
                HStack {
                    Text(menu[id].name)
                        .font(.headline)
                    Spacer()
                }
                Text(menu[id].description)
                    .font(.caption)
            }
        
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(id:.constant(0))
    }
}
