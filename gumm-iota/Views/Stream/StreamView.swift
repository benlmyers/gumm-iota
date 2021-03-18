//
//  StreamView.swift
//  gumm-iota
//
//  Created by Ben Myers on 3/17/21.
//

import SwiftUI

/**
 A protocol for views relating to the stream interface.
 
 This protocol is the superview of:
 
 - `StreamerView`, and
 - `ViewerView`.
 */
protocol StreamView: View {
  
  func exit()
  
  var viewerCount: Int { get }
  
}
