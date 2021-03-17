//
//  ViewerView.swift
//  gumm-iota
//
//  Created by Ben Myers on 3/17/21.
//

import SwiftUI

struct ViewerView: StreamView {
  
  typealias Components = StreamComponents<ViewerView>
  
  // MARK: - Wrapped Properties
  
  @Binding public var show: Bool
  
  // MARK: - Body View
  
  var body: some View {
    VStack {
      Text("This is the viewer view")
      Components.endButton(action: exit)
    }
  }
  
  // MARK: - Internal Methods
  
  internal func exit() {
    show = false
  }
  
}

struct ViewerView_Previews: PreviewProvider {
  static var previews: some View {
    ViewerView(show: .constant(true))
  }
}
