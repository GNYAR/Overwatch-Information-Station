//
//  ContentView.swift
//  OverwatchInformationStation
//
//  Created by User20 on 2022/10/12.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      TabView() {
        Home()
          .navigationBarHidden(true)
          .tabItem { TabItem(symbol: "house", text: "Home") }
        
        Heroes()
          .navigationBarHidden(true)
          .tabItem { TabItem(symbol: "person.3", text: "Heros") }
        
        Media()
          .navigationBarHidden(true)
          .tabItem { TabItem(symbol: "photo.tv", text: "Media") }
      }
      .overlay(
        MoreButton(),
        alignment: .bottomTrailing
      )
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

struct TabItem: View {
  let symbol: String
  let text: String
  
  var body: some View {
    Image(systemName: symbol)
    Text(text)
  }
}

struct MoreButton: View {
  var body: some View {
    NavigationLink(
      destination: More()
        .navigationTitle("More Information")
        .navigationBarTitleDisplayMode(.inline),
      label: {
        Text("More...")
          .foregroundColor(.white)
          .background(
            Capsule()
              .foregroundColor(.orange)
              .frame(width: 72, height: 24)
          )
      })
      .offset(x: -24, y: -60)
    
  }
}
