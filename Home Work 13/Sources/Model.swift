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
}

extension Cell {
    
    // NOW ALWAYS IN ARRAY(ONE ARRAY FOR ONE SECTION)
    static var Cells: [[Cell]] = [
        // Cellular And Network
        [Cell(name: "Airplane Mode", icon: UIImage(named: "airplanemode")!, block: .cellularAndNetwork),
        Cell(name: "Wi-Fi", icon: UIImage(named: "wifi")!, block: .cellularAndNetwork),
        Cell(name: "Bluetooth", icon: UIImage(named: "bluetooth")!, block: .cellularAndNetwork),
        Cell(name: "Mobile Data", icon: UIImage(named: "cellular")!, block: .cellularAndNetwork),
        Cell(name: "Personal Hotspot", icon: UIImage(named: "hotspot")!, block: .cellularAndNetwork),
        Cell(name: "VPN", icon: UIImage(named: "vpn")!, block: .cellularAndNetwork)],
        // Notification
        [Cell(name: "Notification", icon: UIImage(named: "notification")!, block: .notification),
        Cell(name: "Sounds & Haptics", icon: UIImage(named: "sound")!, block: .notification),
        Cell(name: "Focus", icon: UIImage(named: "focus")!, block: .notification),
        Cell(name: "Screen Time", icon: UIImage(named: "screentime")!, block: .notification)],
        // General
        [Cell(name: "General", icon: UIImage(named: "settings")!, block: .general),
        Cell(name: "Face ID & Passcode", icon: UIImage(named: "faceid")!, block: .general),
        Cell(name: "Privacy", icon: UIImage(named: "privacy")!, block: .general),
        Cell(name: "Battary", icon: UIImage(named: "battery")!, block: .general),
        Cell(name: "Emergency SOS", icon: UIImage(named: "sos")!, block: .general),
        Cell(name: "Walpapper", icon: UIImage(named: "wallpaper")!, block: .general)],
        // AppStoreAndWallet
        [Cell(name: "App Store", icon: UIImage(named: "appstore")!, block: .appStoreAndWallet),
        Cell(name: "Wallet & Apple Pay", icon: UIImage(named: "wallet")!, block: .appStoreAndWallet)],
        
    ]
}