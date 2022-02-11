//
//  TabBar.swift
//  iOS15-template
//
//  Created by admin on 11/2/2565 BE.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            ContentView()
                .frame(maxWidth: .infinity, maxHeight: .infinity) //to send tabbar to bottom
                .offset(y: 300)
            HStack {
                Spacer()
                VStack {
                    Image(systemName: "house")
                        .symbolVariant(.fill) //custom
                        .font(.body.bold())
                        .frame(width: 80,height: 29)
                    Text("Lean Now")
                        .font(.caption2)
                }
                Spacer()
                VStack {
                    Image(systemName: "magnifyingglass")
                        .symbolVariant(.fill) //custom
                        .font(.body.bold())
                        .frame(width: 80,height: 29)
                    Text("Explore")
                        .font(.caption2)
                }
                Spacer()
            }
            .padding(.top, 14)
            .frame(height: 88, alignment: .top)
            .background(.ultraThinMaterial, in:
                RoundedRectangle(cornerRadius: 34, style: .continuous))
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
