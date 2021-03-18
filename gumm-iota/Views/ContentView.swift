//
//  ContentView.swift
//  gumm-iota
//
//  Created by Ben Myers on 3/16/21.
//

import SwiftUI

struct ContentView: View {
  
  // MARK: - Wrapped Properties
  
  @Environment(\.colorScheme) private var colorScheme
  @State private var presentStreamerView: Bool = false
  @State private var presentViewerView: Bool = false
  
  // MARK: - Body View
  
  var body: some View {
    VStack {
      Button(action: handleOpenStreamerTapped) {
        Text("Open Streamer")
          .fullScreenCover(isPresented: $presentStreamerView, content: { StreamerView(show: $presentStreamerView) })
      }
      Button(action: handleOpenViewerTapped) {
        Text("Open Viewer")
          .fullScreenCover(isPresented: $presentViewerView, content: { ViewerView(show: $presentViewerView) })
      }
    }
    .statusBar(hidden: true)
  }
  
  // MARK: - Private Methods
  
  private func handleOpenStreamerTapped() {
    presentStreamerView.toggle()
  }
  
  private func handleOpenViewerTapped() {
    presentViewerView.toggle()
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
