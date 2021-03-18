//
//  Theme.swift
//  gumm-iota
//
//  Created by Ben Myers on 3/17/21.
//

import SwiftUI

/**
 A defined set of colors to use within the app.
 */
protocol Theme {
  
  /// The active color scheme
  static var colorScheme: ColorScheme { get set }
  
  /// The background color
  static var background: Color { get }
  /// The secondary background color
  static var background2: Color { get }
  
  /// The foreground color
  static var foreground: Color { get }
  /// The secondary foreground color
  static var foreground2: Color { get }
  /// The tertairy foreground color
  static var foreground3: Color { get }
  
  /// The accent color
  static var accent: Color { get }
  /// The dimmed accent color
  static var accent2: Color { get}
  
}
