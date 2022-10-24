//
//  Home.swift
//  OverwatchInformationStation
//
//  Created by User20 on 2022/10/12.
//

import SwiftUI

struct Home: View {
  let links = [
    LinkItem(text:"desktopcomputer", url: "https://shop.battle.net/product/overwatch?blzcmp=ow_gamesite"),
    LinkItem(text:"x.circle.fill", url: "https://www.xbox.com/games/store/overwatch-origins-edition/C1C4DZJPBC2V/0001"),
    LinkItem(text:"p.circle.fill", url: "https://store.playstation.com/product/EP0002-PPSA07821_00-OWORIGINS0000000"),
    LinkItem(text:"gamecontroller.fill", url: "https://www.nintendo.com/store/products/overwatch-2-switch/")
  ]
  
  var body: some View {
    ZStack {
      PlayerView()
      
      GeometryReader { x in
        VStack(spacing: 20) {
          Spacer()
          
          Image("MastheadLogo")
            .resizable()
            .scaledToFit()
          
          Text("A FUTURE WORTH FIGHTING FOR")
            .foregroundColor(.white)
            .font(.system(.title3, design: .monospaced))
            .bold()
            .italic()
          
          Text("TEAM-BASED ACTION • FREE TO PLAY")
            .foregroundColor(.white)
            .font(.subheadline)
            .fontWeight(.heavy)
          
          HStack(spacing: 24) {
            ForEach(links) { y in
              Link(destination: URL(string: y.url)!, label: {
                Image(systemName: y.text)
                  .resizable()
                  .scaledToFit()
                  .frame(width: 40)
                  .foregroundColor(.white)
                  .opacity(0.8)
              })
            }
          }
          .padding(.top, 36)
          
          Spacer()
        }
        .frame(maxWidth: 350)
        .frame(width: x.size.width * 0.9)
        .position(x: x.size.width / 2, y: x.size.height / 2)
      }
    }
  }
}

struct Home_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
      Color(.blue)
      Home()
    }
  }
}
