//
//  HeroDetail.swift
//  OverwatchInformationStation
//
//  Created by User20 on 2022/10/24.
//

import SwiftUI

struct HeroDetail: View {
  @State var heroIndex: Int = 0;
  
  var body: some View {
    let hero = heroes[heroIndex]
    let name =  hero[0]
    let role = hero[1]
    let location = hero[2]
    let introduction = hero[3]
    
    ZStack {
      Image("\(name)Background")
  
      GeometryReader { x in
        VStack {
          Text(name)
            .foregroundColor(.white)
            .font(.largeTitle)
            .fontWeight(.heavy)
          
          
          Text(introduction)
            .foregroundColor(.white)
            .frame(width: 350)
            .padding(.vertical, 16)
          
          HStack(spacing: 48) {
            HStack {
              Image("DarkCircle\(role)")
                .background(RoleContainer())
              
              Text(role)
                .foregroundColor(.white)
                .opacity(0.7)
            }
            
            HStack {
              Image(systemName: "location.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 40)
                .background(RoleContainer())
              
              Text(location)
                .foregroundColor(.white)
                .opacity(0.7)
            }
          }
        }
        .position(x: x.size.width / 2, y: x.size.height / 2)
        .padding(.top, x.size.height * 0.2)
      }
      
    }
  }
}

struct RoleContainer: View {
  var body: some View {
    Circle()
      .foregroundColor(.white)
      .opacity(0.3)
      .frame(width: 36, height: 36)
  }
}

struct HeroDetail_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
      Image("ANABackground")
      HeroDetail()
    }
  }
}
