//
//  APError.swift
//  Appetisers
//
//  Created by Dan Smith on 05/04/2021.
//

import Foundation

enum APError: Error {
  case invalidURL
  case invalidResponse
  case invalidData
  case unableToComplete
}
