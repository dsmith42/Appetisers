//
//  AppetiserListView.swift
//  Appetisers
//
//  Created by Dan Smith on 05/04/2021.
//

import SwiftUI

struct AppetiserListView: View {
  
  @StateObject var viewModel = AppertiserListViewModel()
  
  var body: some View {
    NavigationView {
      List(viewModel.appetisers) { appetiser in
        AppetiserListCell(appetiser: appetiser)
      }
      .navigationTitle("🍟 Appetisers")
    }
    .onAppear {
      viewModel.getAppetisers()
    }
  }
}

struct AppetiserListView_Previews: PreviewProvider {
  static var previews: some View {
    AppetiserListView()
  }
}
