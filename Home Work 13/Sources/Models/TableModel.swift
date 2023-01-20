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
