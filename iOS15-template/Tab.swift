//
//  Tab.swift
//  iOS15-template
//
//  Created by admin on 11/2/2565 BE.
//

import SwiftUI


struct TabItem: Identifiable {
    var id = UUID()
    var text: String
    var icon: String
    var tab: Tab
}

var tabItems = [
    //id can let it auto generate
    TabItem(text: "Learn Now", icon: "house", tab: .home),
    TabItem(text: "Explore", icon: "magnifyingglass", tab: .explore),
    TabItem(text: "Notifications", icon: "bell", tab: .notifications),
    TabItem(text: "Library", icon: "rectangle.stack", tab: .library)
]

// enum => list of constant, value will not change
// great to use with predefined i.e. menu, tabbar, sidebar
// great with easy to access
enum Tab: String {
    case home
    case explore
    case notifications
    case library
    
}
