//
//  TwoPollWidget.swift
//  gumm-iota
//
//  Created by Ben Myers on 3/18/21.
//

import SwiftUI

struct TwoPollWidget: Widget {
  
  typealias Theme = ClassicTheme
  
  // MARK: - Public Properties
  
  public var size = (3, 2)
  public var question: String = "Do you like coding?"
  public var option1: String = "Yes"
  public var option2: String = "No"
  public var ratio: Float = 0.3
  
  // MARK: - Private Properties
  
  private var barHeight: CGFloat = 20.0
  
  // MARK: - Body View
  
  public var body: some View {
    GeometryReader { proxy in
      VStack {
        questionLabel
        Spacer()
        barView(proxy)
      }
    }
    .padding(5.0)
  }
  
  // MARK: - Supporting Views
  
  private var questionLabel: Label<Text, Image> {
    Label(question, systemImage: "questionmark.circle.fill")
  }
  
  private func barView(_ proxy: GeometryProxy) -> some View {
    HStack(spacing: 0.0) {
      VStack(alignment: .leading) {
        Text(option1)
      }
      .modifier(BarViewModifier(width: widthBar1(proxy), background: Theme.accent, barHeight: barHeight))
      VStack(alignment: .leading) {
        Text(option2)
      }
      .modifier(BarViewModifier(width: widthBar2(proxy), background: Theme.accent2, barHeight: barHeight))
    }
  }
  
  // MARK: - Supporting View Modifiers
  
  private struct BarViewModifier: ViewModifier {
    
    fileprivate var width: CGFloat
    fileprivate var background: Color
    fileprivate var barHeight: CGFloat
    
    func body(content: Content) -> some View {
      content
        .frame(width: width, height: barHeight)
        .background(background)
    }
    
  }
  
  // MARK: - Private Methods
  
  private func widthBar1(_ proxy: GeometryProxy) -> CGFloat {
    return CGFloat(ratio) * containerWidth(proxy)
  }
  
  private func widthBar2(_ proxy: GeometryProxy) -> CGFloat {
    return CGFloat(1.0 - ratio) * containerWidth(proxy)
  }
  
  private func containerWidth(_ proxy: GeometryProxy) -> CGFloat {
    let containerSize = proxy.frame(in: .global).size
    return containerSize.width
  }
  
}
