//
//  RCAlternativeInitApp.swift
//  RCAlternativeInit
//
//  Created by Sean L. on 8/1/22.
//

import RevenueCat
import SwiftUI

@main
struct RCAlternativeInitApp: App {
  var body: some Scene {
    WindowGroup {
      ContentView()
    }
  }
}

extension Purchases: RevenueCatAPIKeyProvider {
  static func revenueCatApiKey() -> String {
    "<MY_API_KEY>"
  }
}
