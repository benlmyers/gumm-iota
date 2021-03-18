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
  public var emoji: String = "😀"
  
  // MARK: - Body View
  
  public var body: some View {
    Text(emoji)
      .font(.title2)
  }
  
}
