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

struct Cells: Hashable{
    var name: String
    var icon: UIImage
    var block: Blocks
}

extension Cells {
    
    static var Cells: [[Cells]] = [
        // Cellular And Network
        [Cells(name: "Airplane Mode", icon: UIImage(systemName: "airplane.circle.fill")!, block: .cellularAndNetwork)],
        [Cells(name: "Wi-Fi", icon: UIImage(systemName: "wifi.square.fill")!, block: .cellularAndNetwork)],
        [Cells(name: "Bluetooch", icon: UIImage(systemName: "wifi.square.fill")!, block: .cellularAndNetwork)],
        [Cells(name: "Mobile Data", icon: UIImage(systemName: "antenna.radiowaves.left.and.right")!, block: .cellularAndNetwork)],
        [Cells(name: "Personal Hotspot", icon: UIImage(systemName: "personalhotspot")!, block: .cellularAndNetwork)],
        [Cells(name: "VPN", icon: UIImage(named: "VPN")!, block: .cellularAndNetwork)],
        // Notification
        [Cells(name: "Notification", icon: UIImage(systemName: "wifi.square.fill")!, block: .notification)],
        [Cells(name: "Sounds & Haptics", icon: UIImage(systemName: "wifi.square.fill")!, block: .notification)],
        [Cells(name: "Focus", icon: UIImage(systemName: "wifi.square.fill")!, block: .notification)],
        [Cells(name: "Screen Time", icon: UIImage(systemName: "wifi.square.fill")!, block: .notification)],
        // General
        [Cells(name: "General", icon: UIImage(systemName: "airplane.circle.fill")!, block: .general)],
        [Cells(name: "Control Centre", icon: UIImage(systemName: "wifi.square.fill")!, block: .general)],
        [Cells(name: "Display & Brightness", icon: UIImage(systemName: "wifi.square.fill")!, block: .general)],
        [Cells(name: "Home Screen", icon: UIImage(systemName: "antenna.radiowaves.left.and.right")!, block: .general)],
        [Cells(name: "Accessibility", icon: UIImage(systemName: "personalhotspot")!, block: .general)],
        [Cells(name: "Walpapper", icon: UIImage(named: "VPN")!, block: .cellularAndNetwork)],
        // AppStoreAndWallet
        [Cells(name: "App Store", icon: UIImage(systemName: "wifi.square.fill")!, block: .appStoreAndWallet)],
        [Cells(name: "Wallet & Apple Pay", icon: UIImage(systemName: "wifi.square.fill")!, block: .appStoreAndWallet)],
        
    ]
}
