//
//  Media.swift
//  OverwatchInformationStation
//
//  Created by User20 on 2022/10/12.
//

import SwiftUI
import AVKit

struct Media: View {
  let comics = [
    "YŌKAI",
    "New_Blood_#5_of_5",
    "Code_of_Violence",
    "New_Blood_#4_of_5"
  ]
  
  let videoUrls = [
    "https://www.pexels.com/video/3343679/download/",
    "https://video-previews.elements.envatousercontent.com/files/c615156d-9e87-4d7f-92a7-caa87952df34/video_preview_h264.mp4",
    "https://video-previews.elements.envatousercontent.com/files/87708788-3a1c-4c5b-9d30-b6b53e30b895/video_preview_h264.mp4"
  ]
  
  let audioPlayer = AVPlayer()
  let musicUrl =  "https://legitmuzic.com/wp-content/uploads/2021/09/Rick_Astley_-_Never_Gonna_Give_You_Up_legitmuzic.com.mp3"
  
  var body: some View {
    GeometryReader { x in
      ScrollView(.vertical, showsIndicators: true) {
        VStack(alignment: .leading) {
          Text("Comics")
            .font(.title)
            .bold()
            .padding(.horizontal)
          
          ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
              ForEach(comics.indices) { i in
                Image("\(comics[i])")
                  .resizable()
                  .scaledToFit()
                  .frame(height: x.size.height * 0.6)
              }
            }
            .padding(.horizontal)
          }
          
          Divider()
          
          Text("Videos")
            .font(.title)
            .bold()
            .padding(.horizontal)
          
          ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
              ForEach(videoUrls.indices) { i in
                HStack {
                  let url = URL(string: videoUrls[i])!
                  VideoPlayer(player: AVPlayer(url: url))
                    .frame(width: x.size.width * 0.8, height: x.size.width * 0.5)
                }
              }
            }
            .padding(.horizontal)
          }
          
          Divider()
          
          Text("Music")
            .font(.title)
            .bold()
            .padding(.horizontal)
          
          HStack {
            Button(action: {
              audioPlayer.play()
            }) {
              Image(systemName: "play.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: x.size.width * 0.4)
            }
            
            Button(action: {
              audioPlayer.pause()
            }) {
              Image(systemName: "pause.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: x.size.width * 0.4)
            }
          }
          .padding()
        }
      }
    }.onAppear {
      let playItem = AVPlayerItem(url: URL(string: musicUrl)!)
      audioPlayer.replaceCurrentItem(with: playItem)
      audioPlayer.play()
    }
  }
}

struct Media_Previews: PreviewProvider {
  static var previews: some View {
    Media()
  }
}
