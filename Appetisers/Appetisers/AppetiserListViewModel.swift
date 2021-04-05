//
//  AppetiserListViewModel.swift
//  Appetisers
//
//  Created by Dan Smith on 05/04/2021.
//

import SwiftUI

final class AppetiserListViewModel: ObservableObject {
  
  @Published var appetisers: [Appetiser] = []
  @Published var alertItem: AlertItem?
  
  func getAppetisers() {
    NetworkManager.shared.getAppetisers { [self] result in
      DispatchQueue.main.async {
        switch result {
        case .success(let appetisers):
          self.appetisers = appetisers
          
        case .failure(let error):
          switch error {
          case .invalidData:
            alertItem = AlertContext.invalidResponse
            
          case .invalidURL:
            alertItem = AlertContext.invalidURL
            
          case .invalidResponse:
            alertItem = AlertContext.invalidResponse
            
          case .unableToComplete:
            alertItem = AlertContext.unableToComplete
          }
        }
      }
    }
  }
}


