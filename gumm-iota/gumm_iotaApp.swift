//
//  gumm_iotaApp.swift
//  gumm-iota
//
//  Created by Ben Myers on 3/16/21.
//

import SwiftUI
import PartialSheet

@main
struct gumm_iotaApp: App {
  
  private let global = Global()
  private let sheetManager: PartialSheetManager = PartialSheetManager()
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(global)
        .environmentObject(sheetManager)
    }
  }
}
