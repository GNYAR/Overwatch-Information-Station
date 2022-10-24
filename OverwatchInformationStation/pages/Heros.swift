//
//  Heros.swift
//  OverwatchInformationStation
//
//  Created by User20 on 2022/10/12.
//

import SwiftUI

struct Heros: View {
    
  var body: some View {
    let cols = [GridItem(), GridItem()]
    
    ScrollView(.vertical, showsIndicators: true) {
      LazyVGrid(columns: cols, spacing: 16) {
        ForEach(heroes.indices) { i in
          let x = heroes[i]
          let name = x[0].replacingOccurrences(of: "_", with: " ")
          
          NavigationLink(
            destination: HeroDetail(heroIndex: i),
            label: {
              VStack {
                Image(x[0])
                  .resizable()
                  .scaledToFit()
                  .frame(height: 160)
                
                Image("DarkCircle\(x[1])")
                  .resizable()
                  .scaledToFit()
                  .frame(height: 32)
                
                Text(name)
                  .foregroundColor(.primary)
                  .bold()
              }
              .padding(8)
              .padding(.bottom, 12)
              .background(
                RoundedRectangle(cornerRadius: 5)
                  .foregroundColor(Color("BackgroundColor"))
              )
            })
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
