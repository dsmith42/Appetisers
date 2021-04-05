//
//  AppetiserTabView.swift
//  Appetisers
//
//  Created by Dan Smith on 05/04/2021.
//

import SwiftUI

struct AppetiserTabView: View {
  var body: some View {
    TabView {
      AppetiserListView()
        .tabItem {
          Image(systemName: "house")
          Text("Home")
        }
      
      AccountView()
        .tabItem {
          Image(systemName: "person")
          Text("Account")
        }
      
      OrderView()
        .tabItem {
          Image(systemName: "bag")
          Text("Order")
        }
    }
    .accentColor(Color("brandPrimary"))
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    AppetiserTabView()
  }
}
