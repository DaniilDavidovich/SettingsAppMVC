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
    static var cells: [[Cell]] = [
        // Cellular And Network
        [Cell(name: "Airplane Mode", icon: UIImage(named: "airplanemode") ?? UIImage(systemName: "trash")!, block: .cellularAndNetwork, toggle: true, text: nil),
         Cell(name: "Wi-Fi", icon: UIImage(named: "wifi") ?? UIImage(systemName: "trash")!, block: .cellularAndNetwork, toggle: true),
         Cell(name: "Bluetooth", icon: UIImage(named: "bluetooth") ?? UIImage(systemName: "trash")!, block: .cellularAndNetwork, toggle: true, text: nil),
         Cell(name: "Mobile Data", icon: UIImage(named: "cellular") ?? UIImage(systemName: "trash")!, block: .cellularAndNetwork, toggle: true, text: nil),
         Cell(name: "Personal Hotspot", icon: UIImage(named: "hotspot") ?? UIImage(systemName: "trash")!, block: .cellularAndNetwork, toggle: true, text: nil),
         Cell(name: "VPN", icon: UIImage(named: "vpn") ?? UIImage(systemName: "trash")!, block: .cellularAndNetwork, toggle: true, text: nil)],
        // Notification
        [Cell(name: "Notification", icon: UIImage(named: "notification") ?? UIImage(systemName: "trash")!, block: .notification, toggle: nil, text: "Add notification"),
         Cell(name: "Sounds & Haptics", icon: UIImage(named: "sound") ?? UIImage(systemName: "trash")!, block: .notification, toggle: nil, text: nil),
         Cell(name: "Focus", icon: UIImage(named: "focus") ?? UIImage(systemName: "trash")!, block: .notification, toggle: nil, text: nil),
         Cell(name: "Screen Time", icon: UIImage(named: "screentime") ?? UIImage(systemName: "trash")!, block: .notification, toggle: nil, text: nil)],
        // General
        [Cell(name: "General", icon: UIImage(named: "settings") ?? UIImage(systemName: "trash")!, block: .general, toggle: nil, text: nil),
         Cell(name: "Face ID & Passcode", icon: UIImage(named: "faceid") ?? UIImage(systemName: "trash")!, block: .general, toggle: nil, text: nil),
         Cell(name: "Privacy", icon: UIImage(named: "privacy") ?? UIImage(systemName: "trash")!, block: .general, toggle: nil, text: nil),
         Cell(name: "Battary", icon: UIImage(named: "battery") ?? UIImage(systemName: "trash")!, block: .general, toggle: nil, text: nil),
         Cell(name: "Emergency SOS", icon: UIImage(named: "sos") ?? UIImage(systemName: "trash")!, block: .general, toggle: nil, text: nil),
         Cell(name: "Wallpapper", icon: UIImage(named: "wallpaper") ?? UIImage(systemName: "trash")!, block: .general, toggle: nil, text: "Add wallpaper")],
        // AppStoreAndWallet
        [Cell(name: "App Store", icon: UIImage(named: "appstore") ?? UIImage(systemName: "trash")!, block: .appStoreAndWallet, toggle: nil, text: nil),
         Cell(name: "Wallet & Apple Pay", icon: UIImage(named: "wallet") ?? UIImage(systemName: "trash")!, block: .appStoreAndWallet, toggle: nil, text: nil)],
    ]
}
