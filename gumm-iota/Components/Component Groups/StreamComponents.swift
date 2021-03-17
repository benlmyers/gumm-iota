//
//  StreamComponents.swift
//  gumm-iota
//
//  Created by Ben Myers on 3/17/21.
//

import SwiftUI

/**
 A `ComponentGroup` for views that conform to `StreamView`.
 */
struct StreamComponents<ViewCategory: StreamView>: ComponentGroup {
  
  typealias ForView = ViewCategory
  
  // MARK: - Public Methods
  
  public static func endButton(action: @escaping () -> Void) -> some View {
    Button(action: action) {
      Text(ViewCategory.self == StreamerView.self ? "End" : "Leave")
    }
  }
  
}
