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
                ForEach(tabItems) { item in
                    VStack {
                        Image(systemName: item.icon)
                            .symbolVariant(.fill) //custom
                            .font(.body.bold())
                            .frame(width: 44,height: 29)
                        Text(item.text)
                            .font(.caption2) //small
                            .lineLimit(1)
                    }
                    .frame(maxWidth: .infinity) // to make space equally
                }
                Spacer()
            }
            .padding(.horizontal, 8)
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
