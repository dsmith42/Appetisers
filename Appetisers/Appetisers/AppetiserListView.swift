//
//  AppetiserListView.swift
//  Appetisers
//
//  Created by Dan Smith on 05/04/2021.
//

import SwiftUI

struct AppetiserListView: View {
  var body: some View {
    NavigationView {
      List(MockData.appetisers) { appetiser in
        AppetiserListCell(appetiser: appetiser)
      }
      .navigationTitle("🍟 Appetisers")
    }
  }
}

struct AppetiserListView_Previews: PreviewProvider {
  static var previews: some View {
    AppetiserListView()
  }
}
