//
//  EmojiWidget.swift
//  gumm-iota
//
//  Created by Ben Myers on 3/18/21.
//

import SwiftUI

struct EmojiWidget: Widget {
  
  // MARK: - Public Properties
  
  public var size = (1, 1)
  
  // MARK: - Body View
  
  public var body: some View {
    Text("😀")
      .font(.title2)
  }
  
}
