//
//  ComponentGroup.swift
//  gumm-iota
//
//  Created by Ben Myers on 3/17/21.
//

import SwiftUI

/**
 A protocol used for grouping components from similar views.
 
 Several views have similar view components. This protocol helps group these components into related categories.
 */
protocol ComponentGroup {
  
  associatedtype ForView
  
}
