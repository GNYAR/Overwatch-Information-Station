//
//  PlayerView.swift
//  OverwatchInformationStation
//
//  Created by User20 on 2022/10/24.
//
//  ref: https://betterprogramming.pub/how-to-create-a-looping-video-background-in-swiftui-3-0-b4844553880d

import SwiftUI
import AVKit


struct PlayerView: UIViewRepresentable {
  func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<PlayerView>) {
  }
  
  func makeUIView(context: Context) -> UIView {
    return LoopingPlayerUIView(frame: .zero)
  }
}

class LoopingPlayerUIView: UIView {
  private let playerLayer = AVPlayerLayer()
  private var playerLooper: AVPlayerLooper?
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    // Load Resource
    let videoUrl = URL(string: "https://blz-contentstack-assets.akamaized.net/v3/assets/blt9c12f249ac15c7ec/blta5464cb78c39385a/63369a3de3c2a2741688cb6b/F2P_Trailer.mp4")!
    let asset = AVAsset(url: videoUrl)
    let item = AVPlayerItem(asset: asset)
    // Setup Player
    let player = AVQueuePlayer()
    playerLayer.player = player
    playerLayer.videoGravity = .resizeAspectFill
    layer.addSublayer(playerLayer)
    playerLooper = AVPlayerLooper(player: player, templateItem: item)
    // Play Video
    player.play()
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    playerLayer.frame = bounds
  }
}
