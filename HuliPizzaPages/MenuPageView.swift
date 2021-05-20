//
//  MenuPageView.swift
//  HuliPizzaPages
//
//  Created by Steven Lipton on 5/16/21.
//

import SwiftUI

struct MenuPageView: View {
    @State var menu = MenuModel().menu
    @Binding var id:Int
    var body: some View {
        VStack{
            HStack {
                Text(menu[id].name)
                    .font(.title2)
                    .bold()
                Spacer()
            }
            .padding(.leading)
            Image("\(menu[id].id)_250w")
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 5)
                .padding()
            
                Text(menu[id].description)
                PizzaHistoryView(id: id)
                    .padding()
            Spacer()
        }
    }
}

struct MenuPageView_Previews: PreviewProvider {
    static var previews: some View {
        MenuPageView(id:.constant( 0))
    }
}
