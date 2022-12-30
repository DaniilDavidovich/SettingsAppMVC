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

struct Cell {
    var name: String
    var image: UIImage
    var block: Blocks
}

extension Cell {
    
    static var Cells: [[Cell]] = [
        // Cellular And Network
        [Cell(name: "Airplane Mode", image: UIImage(systemName: "airplane.circle.fill")!, block: .cellularAndNetwork)],
        [Cell(name: "Wi-Fi", image: UIImage(systemName: "wifi.square.fill")!, block: .cellularAndNetwork)],
        [Cell(name: "Bluetooch", image: UIImage(systemName: "wifi.square.fill")!, block: .cellularAndNetwork)],
        [Cell(name: "Mobile Data", image: UIImage(systemName: "antenna.radiowaves.left.and.right")!, block: .cellularAndNetwork)],
        [Cell(name: "Personal Hotspot", image: UIImage(systemName: "personalhotspot")!, block: .cellularAndNetwork)],
        [Cell(name: "VPN", image: UIImage(named: "VPN")!, block: .cellularAndNetwork)],
        // Notification
        [Cell(name: "Notification", image: UIImage(systemName: "wifi.square.fill")!, block: .notification)],
        [Cell(name: "Sounds & Haptics", image: UIImage(systemName: "wifi.square.fill")!, block: .notification)],
        [Cell(name: "Focus", image: UIImage(systemName: "wifi.square.fill")!, block: .notification)],
        [Cell(name: "Screen Time", image: UIImage(systemName: "wifi.square.fill")!, block: .notification)],
        // General
        [Cell(name: "General", image: UIImage(systemName: "airplane.circle.fill")!, block: .general)],
        [Cell(name: "Control Centre", image: UIImage(systemName: "wifi.square.fill")!, block: .general)],
        [Cell(name: "Display & Brightness", image: UIImage(systemName: "wifi.square.fill")!, block: .general)],
        [Cell(name: "Home Screen", image: UIImage(systemName: "antenna.radiowaves.left.and.right")!, block: .general)],
        [Cell(name: "Accessibility", image: UIImage(systemName: "personalhotspot")!, block: .general)],
        [Cell(name: "Walpapper", image: UIImage(named: "VPN")!, block: .cellularAndNetwork)],
        // AppStoreAndWallet
        [Cell(name: "App Store", image: UIImage(systemName: "wifi.square.fill")!, block: .appStoreAndWallet)],
        [Cell(name: "Wallet & Apple Pay", image: UIImage(systemName: "wifi.square.fill")!, block: .appStoreAndWallet)],
        
    ]
}
