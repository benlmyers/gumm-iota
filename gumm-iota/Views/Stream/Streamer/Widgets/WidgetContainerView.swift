//
//  WidgetContainerView.swift
//  gumm-iota
//
//  Created by Ben Myers on 3/17/21.
//

import SwiftUI

/**
 The Widget Container is the view that determines the size and shape of a certain Widget.
 */
struct WidgetContainerView<T: Widget>: View {
  
  typealias WidgetSize = (Int, Int)
  typealias Theme = ClassicTheme
  
  // MARK: - Public Properties
  
  public var widget: T
  
  // MARK: - Private Properties
  
  fileprivate var unitLength: CGFloat = 60.0
  
  private var frameSize: CGSize {
    return CGSize(width: unitLength * CGFloat(widget.size.0), height: unitLength * CGFloat(widget.size.1))
  }
  
  // MARK: - Initalizers
  
  public init(widget: T) {
    self.widget = widget
  }
  
  // MARK: - Body View
  
  var body: some View {
    widget.body
    .frame(size: frameSize)
    .background(Theme.background2)
    .cornerRadius(5.0)
  }
}
