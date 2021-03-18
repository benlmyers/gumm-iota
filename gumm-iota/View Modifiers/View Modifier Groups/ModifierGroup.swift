//
//  ModifierGroup.swift
//  gumm-iota
//
//  Created by Ben Myers on 3/17/21.
//

import Foundation

import SwiftUI

/**
 A protocol used for grouping view modifiers from similar views.
 
 Several views have similar view modifiers. This protocol helps group these modifiers into related categories.
 */
protocol ModifierGroup {
  
  associatedtype ForView
  
}
