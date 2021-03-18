//
//  ViewerView.swift
//  gumm-iota
//
//  Created by Ben Myers on 3/17/21.
//

import SwiftUI

/**
 The viewer side of `StreamView`.
 
 Users can choose to start a stream, or watch someone else's stream. This view manages the viewer side of things.
 
 # See Also
 - `StreamView`
 - `StreamerView`
 */
struct ViewerView: StreamView {
  
  typealias Components = StreamComponents<ViewerView>
  
  // MARK: - Wrapped Properties
  
  @Binding public var show: Bool
  
  // MARK: - Internal Properties
  
  internal var viewerCount: Int = 16
  
  // MARK: - Body View
  
  var body: some View {
    VStack {
      HStack {
        Components.topBar(endAction: exit, viewerCount: viewerCount)
      }
      Spacer()
    }
    .edgesIgnoringSafeArea(.top)
    .padding()
  }
  
  // MARK: - Internal Methods
  
  internal func exit() {
    show = false
  }
  
}

// MARK: -

struct ViewerView_Previews: PreviewProvider {
  static var previews: some View {
    ViewerView(show: .constant(true))
  }
}
