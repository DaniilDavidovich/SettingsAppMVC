//
//  Model.swift
//  Home Work 13
//
//  Created by Daniil Davidovich on 30.12.22.
//

import Foundation

 class TableModel {
    
    var createModel: [[Table]] = [
            [Table(name: "Airplane Mode",icon: "airplanemode", toggle: true),
             Table(name: "Wi-Fi", icon: "wifi", toggle: true),
             Table(name: "Bluetooth", icon: "bluetooth", toggle: true),
             Table(name: "Mobile Data", icon: "cellular", toggle: true),
             Table(name: "Personal Hotspot", icon: "cellular", toggle: true),
             Table(name: "VPN", icon: "vpn", toggle: true)],
            
            [Table(name: "Notification", icon: "notification", text: "Add Notification"),
             Table(name: "Sounds & Haptics", icon: "sound"),
             Table(name: "Focus", icon: "focus"),
             Table(name: "Screen Time", icon: "screentime")],
            
            [Table(name: "General", icon: "settings"),
             Table(name: "Face ID & Passcode", icon: "faceid"),
             Table(name: "Privacy", icon: "privacy"),
             Table(name: "Battary", icon:  "battery"),
             Table(name: "Emergency SOS", icon: "sos"),
             Table(name: "Wallpapper", icon: "wallpaper", text: "Add Walpapper")],
            
            [Table(name: "App Store", icon: "appstore"),
            Table(name: "Wallet & Apple Pay", icon: "wallet")]
            ]
    }

//extension Cell {
//
//    //ONE ARRAY FOR ONE SECTION
//    static var cells: [[Cell]] = [
//
////         Cellular And Network
//        [Cell(name: "Airplane Mode", icon: "airplanemode", block: .cellularAndNetwork, toggle: true, text: nil),
//         Cell(name: "Wi-Fi", icon: "wifi", block: .cellularAndNetwork, toggle: true),
//         Cell(name: "Bluetooth", icon: "bluetooth", block: .cellularAndNetwork, toggle: true, text: nil),
//         Cell(name: "Mobile Data", icon: "cellular", block: .cellularAndNetwork, toggle: true, text: nil),
//         Cell(name: "Personal Hotspot", icon: "hotspot" , block: .cellularAndNetwork, toggle: true, text: nil),
//         Cell(name: "VPN", icon: "vpn", block: .cellularAndNetwork, toggle: true, text: nil)],
//
//        // Notification
//        [Cell(name: "Notification", icon:
//                 "notification", block: .notification, toggle: nil, text: "Add notification"),
//         Cell(name: "Sounds & Haptics", icon: "sound", block: .notification, toggle: nil, text: nil),
//         Cell(name: "Focus", icon: "focus", block: .notification, toggle: nil, text: nil),
//         Cell(name: "Screen Time", icon: "screentime", block: .notification, toggle: nil, text: nil)],
//
//        // General
//        [Cell(name: "General", icon: "settings", block: .general, toggle: nil, text: nil),
//         Cell(name: "Face ID & Passcode", icon: "faceid", block: .general, toggle: nil, text: nil),
//         Cell(name: "Privacy", icon: "privacy", block: .general, toggle: nil, text: nil),
//         Cell(name: "Battary", icon:  "battery", block: .general, toggle: nil, text: nil),
//         Cell(name: "Emergency SOS", icon: "sos", block: .general, toggle: nil, text: nil),
//         Cell(name: "Wallpapper", icon: "wallpaper", block: .general, toggle: nil, text: "Add wallpaper")],
//
//        // AppStoreAndWallet
//        [Cell(name: "App Store", icon: "appstore", block: .appStoreAndWallet, toggle: nil, text: nil),
//         Cell(name: "Wallet & Apple Pay", icon: "wallet", block: .appStoreAndWallet, toggle: nil, text: nil)],
//    ]
//}
