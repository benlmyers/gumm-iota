//
//  StreamModifiers.swift
//  gumm-iota
//
//  Created by Ben Myers on 3/17/21.
//

import SwiftUI

/**
 A `ComponentGroup` for views that conform to `StreamView`.
 */
struct StreamModifiers<ViewCategory: StreamView>: ModifierGroup {
  
  typealias ForView = ViewCategory
  typealias Theme = ClassicTheme
  
}
