//
//  CameraRollWidget.swift
//  gumm-iota
//
//  Created by Ben Myers on 3/18/21.
//

import Foundation

import SwiftUI

struct CameraRollWidget: Widget {
  
  // MARK: - Public Properties
  
  public var size = (2, 2)
  
  // MARK: - Body View
  
  public var body: some View {
    Image("Sample_Image")
      .resizable()
  }
  
}
