//
//  StreamerView.swift
//  gumm-iota
//
//  Created by Ben Myers on 3/16/21.
//

import SwiftUI

/**
 The streamer side of `StreamView`.
 
 Users can choose to start a stream, or watch someone else's stream. This view manages the streamer side of things.
 
 # See Also
 - `StreamView`
 - `ViewerView`
 */
struct StreamerView: StreamView {
  
  typealias Components = StreamComponents<StreamerView>
  
  // MARK: - Wrapped Properties
  
  @Binding public var show: Bool
  
  // MARK: - Internal Properties
  
  internal var viewerCount: Int = 16
  
  // MARK: - Body View
  
  var body: some View {
    VStack {
      HStack {
        Components.topBar(endAction: exit, settingsAction: settings, viewerCount: viewerCount)
      }
      Spacer()
    }
  }
  
  // MARK: - Internal Methods
  
  internal func exit() {
    show = false
  }
  
  internal func settings() {
    // (open settings page)
  }
  
}

// MARK: -

struct StreamerView_Previews: PreviewProvider {
  static var previews: some View {
    StreamerView(show: .constant(true))
  }
}
