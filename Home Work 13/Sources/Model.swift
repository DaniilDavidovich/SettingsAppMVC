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
    var icon: UIImage
    var block: Blocks
    var toggle: Bool?
    var text: String?
}

extension Cell {
    
    // NOW ALWAYS IN ARRAY(ONE ARRAY FOR ONE SECTION)
    static var Cells: [[Cell]] = [
        // Cellular And Network
        [Cell(name: "Airplane Mode", icon: UIImage(named: "airplanemode")!, block: .cellularAndNetwork, toggle: true, text: nil),
         Cell(name: "Wi-Fi", icon: UIImage(named: "wifi")!, block: .cellularAndNetwork, toggle: true),
         Cell(name: "Bluetooth", icon: UIImage(named: "bluetooth")!, block: .cellularAndNetwork, toggle: true, text: nil),
         Cell(name: "Mobile Data", icon: UIImage(named: "cellular")!, block: .cellularAndNetwork, toggle: true, text: nil),
         Cell(name: "Personal Hotspot", icon: UIImage(named: "hotspot")!, block: .cellularAndNetwork, toggle: true, text: nil),
         Cell(name: "VPN", icon: UIImage(named: "vpn")!, block: .cellularAndNetwork, toggle: true, text: nil)],
        // Notification
        [Cell(name: "Notification", icon: UIImage(named: "notification")!, block: .notification, toggle: nil, text: "Add notification"),
         Cell(name: "Sounds & Haptics", icon: UIImage(named: "sound")!, block: .notification, toggle: nil, text: nil),
         Cell(name: "Focus", icon: UIImage(named: "focus")!, block: .notification, toggle: nil, text: nil),
         Cell(name: "Screen Time", icon: UIImage(named: "screentime")!, block: .notification, toggle: nil, text: nil)],
        // General
        [Cell(name: "General", icon: UIImage(named: "settings")!, block: .general, toggle: nil, text: nil),
         Cell(name: "Face ID & Passcode", icon: UIImage(named: "faceid")!, block: .general, toggle: nil, text: nil),
         Cell(name: "Privacy", icon: UIImage(named: "privacy")!, block: .general, toggle: nil, text: nil),
         Cell(name: "Battary", icon: UIImage(named: "battery")!, block: .general, toggle: nil, text: nil),
         Cell(name: "Emergency SOS", icon: UIImage(named: "sos")!, block: .general, toggle: nil, text: nil),
         Cell(name: "Wallpapper", icon: UIImage(named: "wallpaper")!, block: .general, toggle: nil, text: "Add wallpaper")],
        // AppStoreAndWallet
        [Cell(name: "App Store", icon: UIImage(named: "appstore")!, block: .appStoreAndWallet, toggle: nil, text: nil),
         Cell(name: "Wallet & Apple Pay", icon: UIImage(named: "wallet")!, block: .appStoreAndWallet, toggle: nil, text: nil)],
        
    ]
}
