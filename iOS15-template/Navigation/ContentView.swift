//
//  ContentView.swift
//  iOS15-template
//
//  Created by admin on 2/2/2565 BE.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("selectedTab") var selectedTab: Tab = .home
    
    var body: some View {
        ZStack(alignment: .bottom) {
            //            if selectedTab == .home {
            //                ContentView()
            //                    .frame(maxWidth: .infinity, maxHeight: .infinity) //to send tabbar to bottom
            ////                    .offset(y: 300)
            //            } else if selectedTab == .explore {
            //                AccountView()
            //
            //            }
                        
            // used group to set modifier, group will inherite the modifier
            Group {
                //switch is more cleaner than if else, use with enum
                switch selectedTab {
                case .home:
                    HomeView()
                case .explore:
                    AccountView()
                case .notifications:
                    AccountView()
                case .library:
                    AccountView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            TabBar()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
                .preferredColorScheme(.dark)
                .previewDevice("iPhone 13 mini")
        }
    }
}
