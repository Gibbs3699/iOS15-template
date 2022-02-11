//
//  TabBar.swift
//  iOS15-template
//
//  Created by admin on 11/2/2565 BE.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "house")
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Explore")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
