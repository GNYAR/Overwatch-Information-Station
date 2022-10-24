//
//  More.swift
//  OverwatchInformationStation
//
//  Created by User20 on 2022/10/12.
//

import SwiftUI

struct More: View {
  var body: some View {
      List {
        LinkSection(header: "News", links: newsLinks)
        LinkSection(header: "Community", links: communityLinks)
        LinkSection(header: "Play Now", links: playLinks)
        LinkSection(header: "More From Blizzard", links: blizzardLinks)
      }
  }
}

struct More_Previews: PreviewProvider {
  static var previews: some View {
    More()
  }
}

struct LinkSection: View {
  let header: String
  let links: [LinkItem]
  
  var body: some View {
    Section(header: Text(header)) {
      ForEach(links) { x in
        Link(destination: URL(string: x.url)!, label: {
          Text(x.text)
        })
      }
    }
  }
}
