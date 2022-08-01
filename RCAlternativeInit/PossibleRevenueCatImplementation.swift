//
//  PossibleRevenueCatImplementation.swift
//  RCAlternativeInit
//
//  Created by Sean L. on 8/1/22.
//

import Foundation
import RevenueCat

protocol RevenueCatAPIKeyProvider {
  static func revenueCatApiKey() -> String
}

extension Purchases {
  static var alterShared: Purchases? {
    // If initialized, return the initialized instance.

    let selector = NSSelectorFromString("revenueCatApiKey")
    if responds(to: selector) {
      let key = perform(selector)
      // Initialize with key.
      return nil // return the intialization result.
    }

    return shared
  }
}
