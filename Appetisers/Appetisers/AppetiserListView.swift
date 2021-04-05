//
//  AppetiserListView.swift
//  Appetisers
//
//  Created by Dan Smith on 05/04/2021.
//

import SwiftUI

struct AppetiserListView: View {
  
  @StateObject var viewModel = AppetiserListViewModel()
  
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
    .alert(item: $viewModel.alertItem) { alertItem in
      Alert(title: alertItem.title,
            message: alertItem.message,
            dismissButton: alertItem.dismissButton)
    }
  }
}

struct AppetiserListView_Previews: PreviewProvider {
  static var previews: some View {
    AppetiserListView()
  }
}
