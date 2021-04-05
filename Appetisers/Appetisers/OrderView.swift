//
//  OrderView.swift
//  Appetisers
//
//  Created by Dan Smith on 05/04/2021.
//

import SwiftUI

struct OrderView: View {
    var body: some View {
      NavigationView {
        Text("Orders View")        .navigationTitle("🧾 Orders")
      }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView()
    }
}
