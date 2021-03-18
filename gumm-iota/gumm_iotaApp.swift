//
//  gumm_iotaApp.swift
//  gumm-iota
//
//  Created by Ben Myers on 3/16/21.
//

import SwiftUI

@main
struct gumm_iotaApp: App {
  
  private let global = Global()
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(global)
    }
  }
}
