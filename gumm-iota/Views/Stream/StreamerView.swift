//
//  StreamerView.swift
//  gumm-iota
//
//  Created by Ben Myers on 3/16/21.
//

import SwiftUI

struct StreamerView: StreamView {
  
  typealias Components = StreamComponents<ViewerView>
  
  // MARK: - Wrapped Properties
  
  @Binding public var show: Bool
  
  // MARK: - Body View
  
  var body: some View {
    VStack {
      Text("This is the streamer view")
      Components.endButton(action: exit)
    }
  }
  
  // MARK: - Internal Methods
  
  internal func exit() {
    show = false
  }
  
}

struct StreamerView_Previews: PreviewProvider {
  static var previews: some View {
    StreamerView(show: .constant(true))
  }
}
