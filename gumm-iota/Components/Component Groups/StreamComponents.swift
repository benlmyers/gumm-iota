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
  typealias Theme = ClassicTheme
  
  // MARK: - Supporting Components
  
  /**
   The top bar component.
   
   The top bar component include the:
   - end button,
   - settings button (streamer only), and the
   - viewer count
   subcomponents.
   
   On iPhone X and newer, these components will appear next to the notch. On older models, they will appear in the top-left and top-right corners of the screeen.
   
   - parameter endAction: The action that is performed when the end button is pressed
   - parameter settingsAction: The action that is performed when the settings button is pressed
   - parameter viewerCount: The stream's viewer count
   */
  public static func topBar(
    endAction: @escaping () -> Void,
    settingsAction: (() -> Void)? = nil,
    viewerCount: Int
  ) -> some View {
    HStack(spacing: 16.0) {
      viewerCounter(count: viewerCount)
      Spacer()
      if ForView.self == StreamerView.self, let action = settingsAction { settingsButton(action: action) }
      endButton(action: endAction)
    }
    .font(.title3)
    .foregroundColor(Theme.foreground)
    .padding(.vertical, 12)
    .padding(.horizontal, 32)
    .edgesIgnoringSafeArea(.top)
  }
  
  // MARK: - Private Components
  
  private static func endButton(action: @escaping () -> Void) -> some View {
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
