//
//  Model.swift
//  Home Work 13
//
//  Created by Daniil Davidovich on 30.12.22.
//

import UIKit

enum Blocks  {
    case cellularAndNetwork
    case notification
    case general
    case appStoreAndWallet
}

struct Cell: Hashable{
    var name: String
    var icon: String
    var block: Blocks
    var toggle: Bool?
    var text: String?
}

extension Cell {
    
    //ONE ARRAY FOR ONE SECTION
    static var cells: [[Cell]] = [
        
        // Cellular And Network
        [Cell(name: "Airplane Mode", icon: "airplanemode", block: .cellularAndNetwork, toggle: true, text: nil),
         Cell(name: "Wi-Fi", icon: "wifi", block: .cellularAndNetwork, toggle: true),
         Cell(name: "Bluetooth", icon: "bluetooth", block: .cellularAndNetwork, toggle: true, text: nil),
         Cell(name: "Mobile Data", icon: "cellular", block: .cellularAndNetwork, toggle: true, text: nil),
         Cell(name: "Personal Hotspot", icon: "hotspot" , block: .cellularAndNetwork, toggle: true, text: nil),
         Cell(name: "VPN", icon: "vpn", block: .cellularAndNetwork, toggle: true, text: nil)],
        
        // Notification
        [Cell(name: "Notification", icon:
                 "notification", block: .notification, toggle: nil, text: "Add notification"),
         Cell(name: "Sounds & Haptics", icon: "sound", block: .notification, toggle: nil, text: nil),
         Cell(name: "Focus", icon: "focus", block: .notification, toggle: nil, text: nil),
         Cell(name: "Screen Time", icon: "screentime", block: .notification, toggle: nil, text: nil)],
        
        // General
        [Cell(name: "General", icon: "settings", block: .general, toggle: nil, text: nil),
         Cell(name: "Face ID & Passcode", icon: "faceid", block: .general, toggle: nil, text: nil),
         Cell(name: "Privacy", icon: "privacy", block: .general, toggle: nil, text: nil),
         Cell(name: "Battary", icon:  "battery", block: .general, toggle: nil, text: nil),
         Cell(name: "Emergency SOS", icon: "sos", block: .general, toggle: nil, text: nil),
         Cell(name: "Wallpapper", icon: "wallpaper", block: .general, toggle: nil, text: "Add wallpaper")],
        
        // AppStoreAndWallet
        [Cell(name: "App Store", icon: "appstore", block: .appStoreAndWallet, toggle: nil, text: nil),
         Cell(name: "Wallet & Apple Pay", icon: "wallet", block: .appStoreAndWallet, toggle: nil, text: nil)],
    ]
}
