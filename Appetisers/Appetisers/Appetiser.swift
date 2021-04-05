//
//  Appetiser.swift
//  Appetisers
//
//  Created by Dan Smith on 05/04/2021.
//

import Foundation

struct Appetiser: Decodable, Identifiable {
  let id: Int
  let name: String
  let description: String
  let imageURL: String
  let price: Double
  let calories: Int
  let carbs: Int
  let protein: Int
}

struct AppetiserResponse: Decodable {
  let request: [Appetiser]
}

struct MockData {
  
  static func sampleAppetiser(id: Int = 1,
                              name: String = "Takoyaki",
                              description: String = "Delicious description",
                              imageURL: String = "",
                              price: Double = 9.99,
                              calories: Int = 420,
                              carbs: Int = 42,
                              protein: Int = 24) -> Appetiser {
    return Appetiser(id: id,
                     name: name,
                     description: description,
                     imageURL: imageURL,
                     price: price,
                     calories: calories,
                     carbs: carbs,
                     protein: protein)
  }
  
  static let appetisers = [sampleAppetiser(id: 1), sampleAppetiser(id: 2), sampleAppetiser(id: 3), sampleAppetiser(id: 4)]
}
