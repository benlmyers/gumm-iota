//
//  View.swift
//  gumm-iota
//
//  Created by Ben Myers on 3/17/21.
//

import SwiftUI

extension View {
  
  @inlinable public func frame(size: CGSize) -> some View {
    return frame(width: size.width, height: size.height)
  }
  
}
