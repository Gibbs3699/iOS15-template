//
//  HomeView.swift
//  iOS15-template
//
//  Created by admin on 13/2/2565 BE.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            FeaturedItem()
        }
        .overlay(
            NavigationBar(title: "Featured")
        )
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
