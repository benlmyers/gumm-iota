//
//  StreamComponents.swift
//  gumm-iota
//
//  Created by Ben Myers on 3/17/21.
//

import SwiftUI

/**
 A `ComponentGroup` for views that conform to `StreamView`.
 */
struct StreamComponents<ViewCategory: StreamView>: ComponentGroup {
  
  typealias ForView = ViewCategory
  
  // MARK: - Supporting Components
  
  /**
   The top bar components.
   
   The top bar components include the:
   - end button,
   - settings button (streamer only), and the
   - viewer count.
   
   On iPhone X and newer, these components will appear next to the notch. On older models, they will appear in the top-left and top-right corners of the screeen.
   
   - parameter endAction: The action that is performed when the end button is pressed
   - parameter settingsAction: The action that is performed when the settings button is pressed
   - parameter viewerCount: The stream's viewer count
   */
  public static func topBar(
    endAction: @escaping () -> Void,
    settingsAction: @escaping () -> Void,
    viewerCount: Int
  ) -> some View {
    HStack {
      viewerCounter(count: viewerCount)
      Spacer()
      if ForView.self == StreamerView.self { settingsButton(action: settingsAction) }
      endButton(action: endAction)
    }
  }
  
  // MARK: - Internal Components
  
  internal static func endButton(action: @escaping () -> Void) -> some View {
    Button(action: action) {
      Image(systemName: "xmark")
    }
  }
  
  internal static func settingsButton(action: @escaping () -> Void) -> some View {
    Button(action: action) {
      Image(systemName: "slider.horizontal.3")
    }
  }
  
  internal static func viewerCounter(count: Int) -> some View {
    Label("\(count)", systemImage: "person.fill")
  }
  
}
