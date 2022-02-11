//
//  TabBar.swift
//  iOS15-template
//
//  Created by admin on 11/2/2565 BE.
//

import SwiftUI

struct TabBar: View {
    @State var selectedTab: Tab = .home
    @State var color: Color = .teal
    
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
                //switch is more cleaner than if else
                switch selectedTab {
                case .home:
                    ContentView()
                case .explore:
                    AccountView()
                case .notifications:
                    AccountView()
                case .library:
                    AccountView()
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity) //to send tabbar to bottom
            
            HStack {
                Spacer()
                ForEach(tabItems) { item in
                    Button {
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.5)) {
                            selectedTab = item.tab
                            color = item.color
                        }
                    } label: {
                        VStack {
                            Image(systemName: item.icon)
                                .symbolVariant(.fill) //custom
                                .font(.body.bold())
                                .frame(width: 44,height: 29)
                            Text(item.text)
                                .font(.caption2) //small
                                .lineLimit(1)
                        }
                        .frame(maxWidth: .infinity)
                    } // to make space equally
                    .foregroundStyle(selectedTab == item.tab ? .primary : .secondary)
                    .blendMode(selectedTab == item.tab ? .overlay : .normal)
                }
                Spacer()
            }
            .padding(.horizontal, 8)
            .padding(.top, 14)
            .frame(height: 88, alignment: .top)
            .background(.ultraThinMaterial, in:
                RoundedRectangle(cornerRadius: 34, style: .continuous))
            .background(
                HStack {
                    if selectedTab == .library {Spacer()}
                    if selectedTab == .explore {Spacer()}
                    if selectedTab == .notifications {
                        Spacer()
                        Spacer()
                    }
                    Circle().fill(color).frame(width: 88)
                    if selectedTab == .home {Spacer()}
                    if selectedTab == .explore {
                        Spacer()
                        Spacer()
                    }
                    if selectedTab == .notifications {Spacer()}
                }.padding(.horizontal,8)
            )
            .overlay(
                HStack {
                    if selectedTab == .library {Spacer()}
                    if selectedTab == .explore {Spacer()}
                    if selectedTab == .notifications {
                        Spacer()
                        Spacer()
                    }
                    Rectangle().fill(color)
                        .frame(width: 28, height: 5)
                        .cornerRadius(3)
                        .frame(width: 88)
                        .frame(maxHeight: .infinity, alignment: .top)
                    if selectedTab == .home {Spacer()}
                    if selectedTab == .explore {
                        Spacer()
                        Spacer()
                    }
                    if selectedTab == .notifications {Spacer()}

                }
                    .padding(.horizontal,18)
            )
            .strokeStyle(cornerRadius: 34) //to blur
            .frame(maxHeight: .infinity, alignment: .bottom)
            .ignoresSafeArea()
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
