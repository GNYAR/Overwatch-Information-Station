//
//  Heros.swift
//  OverwatchInformationStation
//
//  Created by User20 on 2022/10/12.
//

import SwiftUI

struct Heros: View {
  let heroes = [
    ["ANA", "Support"],
    ["ASHE", "Damage"],
    ["BAPTISTE", "Support"],
    ["BASTION", "Damage"],
    ["BRIGITTE", "Support"],
    ["CASSIDY", "Damage"],
    ["D.VA", "Tank"],
    ["DOOMFIST", "Tank"],
    ["ECHO", "Damage"],
    ["GENJI", "Damage"],
    ["HANZO", "Damage"],
    ["JUNKER_QUEEN", "Tank"],
    ["JUNKRAT", "Damage"],
    ["KIRIKO", "Support"],
    ["LÚCIO", "Support"],
    ["MEI", "Damage"],
    ["MERCY", "Support"],
    ["MOIRA", "Support"],
    ["ORISA", "Tank"],
    ["PHARAH", "Damage"],
    ["REAPER", "Damage"],
    ["REINHARDT", "Tank"],
    ["ROADHUG", "Tank"],
    ["SIGMA", "Tank"],
    ["SOJOURN", "Damage"],
    ["SOLDIER_76", "Damage"],
    ["SOMBRA", "Damage"],
    ["SYMMETRA", "Damage"],
    ["TOBJÖRN", "Damage"],
    ["TRACER", "Damage"],
    ["WIDOWMAKER", "Damage"],
    ["WINSTON", "Tank"],
    ["WRECKING_BALL", "Tank"],
    ["ZARYA", "Tank"],
    ["ZENYATTA", "Support"],
  ]
  
  var body: some View {
    let cols = [GridItem(), GridItem()]
    
    ScrollView(.vertical, showsIndicators: true) {
      LazyVGrid(columns: cols, spacing: 16) {
        ForEach(heroes.indices) { i in
          let x = heroes[i]
          
          VStack {
            Image(x[0])
              .resizable()
              .scaledToFit()
              .frame(height: 160)
            
            Image("DarkCircle\(x[1])")
              .resizable()
              .scaledToFit()
              .frame(height: 32)
            
            Text(x[0].replacingOccurrences(of: "_", with: " "))
              .bold()
          }
          .padding(8)
          .padding(.bottom, 12)
          .background(
            RoundedRectangle(cornerRadius: 5)
              .foregroundColor(Color("BackgroundColor"))
          )
        }
      }
      .padding(16)
    }
  }
}

struct Heros_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
      Color(.blue)
      Heros()
    }
  }
}
