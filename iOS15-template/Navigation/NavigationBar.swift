//
//  NavigationBar.swift
//  iOS15-template
//
//  Created by admin on 18/2/2565 BE.
//

import SwiftUI

struct NavigationBar: View {
    var title = ""
    
    var body: some View {
        ZStack {
            Color.clear
                .background(.ultraThinMaterial)
                .blur(radius: 10) // to blur
            
            Text(title)
            .font(.largeTitle.weight(.bold))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 20)
        }
        .frame(height: 70)
        .frame(maxHeight: .infinity, alignment: .top)
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        //title onyly effects the preview
        NavigationBar(title: "Features")
    }
}
