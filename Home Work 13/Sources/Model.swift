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

enum Icon {
    static var airplaneMode = {
        let image = UIImage(systemName: "airplane.circle.fill")!
        image.withTintColor(.orange)
        return image
    }
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
        [Cell(name: "Airplane Mode", icon: UIImage(systemName: "airplane.circle.fill")!, block: .cellularAndNetwork),
        Cell(name: "Wi-Fi", icon: UIImage(systemName: "wifi.square.fill")!, block: .cellularAndNetwork),
        Cell(name: "Bluetooth", icon: UIImage(systemName: "wifi.square.fill")!, block: .cellularAndNetwork),
        Cell(name: "Mobile Data", icon: UIImage(systemName: "antenna.radiowaves.left.and.right")!, block: .cellularAndNetwork),
        Cell(name: "Personal Hotspot", icon: UIImage(systemName: "personalhotspot")!, block: .cellularAndNetwork),
        Cell(name: "VPN", icon: UIImage(named: "VPN")!, block: .cellularAndNetwork)],
        // Notification
        [Cell(name: "Notification", icon: UIImage(systemName: "wifi.square.fill")!, block: .notification),
        Cell(name: "Sounds & Haptics", icon: UIImage(systemName: "wifi.square.fill")!, block: .notification),
        Cell(name: "Focus", icon: UIImage(systemName: "wifi.square.fill")!, block: .notification),
        Cell(name: "Screen Time", icon: UIImage(systemName: "wifi.square.fill")!, block: .notification)],
        // General
        [Cell(name: "General", icon: UIImage(systemName: "airplane.circle.fill")!, block: .general),
        Cell(name: "Control Centre", icon: UIImage(systemName: "wifi.square.fill")!, block: .general),
        Cell(name: "Display & Brightness", icon: UIImage(systemName: "wifi.square.fill")!, block: .general),
        Cell(name: "Home Screen", icon: UIImage(systemName: "antenna.radiowaves.left.and.right")!, block: .general),
        Cell(name: "Accessibility", icon: UIImage(systemName: "personalhotspot")!, block: .general),
        Cell(name: "Walpapper", icon: UIImage(named: "VPN")!, block: .general)],
        // AppStoreAndWallet
        [Cell(name: "App Store", icon: UIImage(systemName: "wifi.square.fill")!, block: .appStoreAndWallet),
        Cell(name: "Wallet & Apple Pay", icon: UIImage(systemName: "wifi.square.fill")!, block: .appStoreAndWallet)],
        
    ]
}
