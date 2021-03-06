//
//  Widget.swift
//  gumm-iota
//
//  Created by Ben Myers on 3/17/21.
//

import SwiftUI

protocol Widget: View {
  
  typealias WidgetSize = (Int, Int)
  
  var size: WidgetSize { get }
  
}
