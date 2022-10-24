//
//  data.swift
//  OverwatchInformationStation
//
//  Created by User20 on 2022/10/24.
//
import SwiftUI

enum Role: String {
  case Tank = "Tank"
  case Damage = "Damage"
  case Support = "Support"
}

struct Hero: Identifiable {
  let id = UUID()
  
  let name: String
  let role: Role
  let location: String
  let description: String
}

let heroes = [
  Hero(name: "ANA", role: .Support, location: "Taiwan", description: "The best hero."),
  Hero(name:"ASHE", role: .Damage, location: "Taiwan", description: "The best hero."),
  Hero(name:"BAPTISTE", role: .Support, location: "Taiwan", description: "The best hero."),
  Hero(name:"BASTION", role: .Damage, location: "Taiwan", description: "The best hero."),
  Hero(name:"BRIGITTE", role: .Support, location: "Taiwan", description: "The best hero."),
  Hero(name:"CASSIDY", role: .Damage, location: "Taiwan", description: "The best hero."),
  Hero(name:"D.VA", role: .Tank, location: "Taiwan", description: "The best hero."),
  Hero(name:"DOOMFIST", role: .Tank, location: "Taiwan", description: "The best hero."),
  Hero(name:"ECHO", role: .Damage, location: "Taiwan", description: "The best hero."),
  Hero(name:"GENJI", role: .Damage, location: "Taiwan", description: "The best hero."),
  Hero(name:"HANZO", role: .Damage, location: "Taiwan", description: "The best hero."),
  Hero(name:"JUNKER_QUEEN", role: .Tank, location: "Taiwan", description: "The best hero."),
  Hero(name:"JUNKRAT", role: .Damage, location: "Taiwan", description: "The best hero."),
  Hero(name:"KIRIKO", role: .Support, location: "Taiwan", description: "The best hero."),
  Hero(name:"LÚCIO", role: .Support, location: "Taiwan", description: "The best hero."),
  Hero(name:"MEI", role: .Damage, location: "Taiwan", description: "The best hero."),
  Hero(name:"MERCY", role: .Support, location: "Taiwan", description: "The best hero."),
  Hero(name:"MOIRA", role: .Support, location: "Taiwan", description: "The best hero."),
  Hero(name:"ORISA", role: .Tank, location: "Taiwan", description: "The best hero."),
  Hero(name:"PHARAH", role: .Damage, location: "Taiwan", description: "The best hero."),
  Hero(name:"REAPER", role: .Damage, location: "Taiwan", description: "The best hero."),
  Hero(name:"REINHARDT", role: .Tank, location: "Taiwan", description: "The best hero."),
  Hero(name:"ROADHUG", role: .Tank, location: "Taiwan", description: "The best hero."),
  Hero(name:"SIGMA", role: .Tank, location: "Taiwan", description: "The best hero."),
  Hero(name:"SOJOURN", role: .Damage, location: "Taiwan", description: "The best hero."),
  Hero(name:"SOLDIER_76", role: .Damage, location: "Taiwan", description: "The best hero."),
  Hero(name:"SOMBRA", role: .Damage, location: "Taiwan", description: "The best hero."),
  Hero(name:"SYMMETRA", role: .Damage, location: "Taiwan", description: "The best hero."),
  Hero(name:"TOBJÖRN", role: .Damage, location: "Taiwan", description: "The best hero."),
  Hero(name:"TRACER", role: .Damage, location: "Taiwan", description: "The best hero."),
  Hero(name:"WIDOWMAKER", role: .Damage, location: "Taiwan", description: "The best hero."),
  Hero(name:"WINSTON", role: .Tank, location: "Taiwan", description: "The best hero."),
  Hero(name:"WRECKING_BALL", role: .Tank, location: "Taiwan", description: "The best hero."),
  Hero(name:"ZARYA", role: .Tank, location: "Taiwan", description: "The best hero."),
  Hero(name:"ZENYATTA", role: .Support, location: "Taiwan", description: "The best hero."),
]

struct LinkItem: Identifiable {
  let id = UUID()

  let text: String
  let url: String
}

let newsLinks = [
  LinkItem(text: "News", url: "https://overwatch.blizzard.com/en-us/news/)"),
  LinkItem(text: "Patch Notes", url: "https://overwatch.blizzard.com/en-us/news/patch-notes/"),
  LinkItem(text: "Facebook", url: "https://www.facebook.com/OverwatchEU"),
  LinkItem(text: "Twitter", url: "https://www.twitter.com/OverwatchEU"),
  LinkItem(text: "YouTube", url: "https://www.youtube.com/OverwatchEU"),
  LinkItem(text: "Instagram", url: "https://www.instagram.com/overwatcheu/")
]

let communityLinks = [
  LinkItem(text: "Forums", url: "https://us.forums.blizzard.com/en/overwatch/"),
  LinkItem(text: "Overwatch League", url: "https://www.overwatchleague.com/en-us/"),
  LinkItem(text: "Contenders", url: "https://overwatchleague.com/contenders"),
  LinkItem(text: "Open Division", url: "https://overwatchleague.com/open-division-about"),
]

let playLinks = [
  LinkItem(text:"Battle.net", url: "https://shop.battle.net/product/overwatch?blzcmp=ow_gamesite"),
  LinkItem(text:"Xbox", url: "https://www.xbox.com/games/store/overwatch-origins-edition/C1C4DZJPBC2V/0001"),
  LinkItem(text:"PlayStation", url: "https://store.playstation.com/product/EP0002-PPSA07821_00-OWORIGINS0000000"),
  LinkItem(text:"Nintendo Switch", url: "https://www.nintendo.com/store/products/overwatch-2-switch/")
]

let blizzardLinks = [
  LinkItem(text: "Visit Blizzard.com", url: "https://www.blizzard.com/"),
  LinkItem(text: "All Games", url: "https://www.blizzard.com/games")
]
