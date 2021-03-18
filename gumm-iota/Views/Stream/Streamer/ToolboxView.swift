//
//  ToolboxView.swift
//  gumm-iota
//
//  Created by Ben Myers on 3/17/21.
//

import SwiftUI

/**
 The toolbox holds all of the streamer's available Widgets.
 */
struct ToolboxView: View {
  var body: some View {
    VStack(alignment: .leading) {
      Text("Favorites")
        .font(.title2)
        .fontWeight(.heavy)
      ScrollView(.horizontal) {
        HStack(spacing: 10.0) {
          WidgetContainerView(widget: EmojiWidget())
          WidgetContainerView(widget: EmojiWidget())
          WidgetContainerView(widget: EmojiWidget())
        }
      }
      
    }
    .padding()
  }
}

// MARK: -

struct ToolboxView_Previews: PreviewProvider {
  static var previews: some View {
    ToolboxView()
  }
}
