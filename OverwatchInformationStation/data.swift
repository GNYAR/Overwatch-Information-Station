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
