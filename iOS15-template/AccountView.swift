//
//  AccountView.swift
//  iOS15-template
//
//  Created by admin on 6/2/2565 BE.
//

import SwiftUI

struct AccountView: View {
    @State var isDeleted = false
    @State var isPinned = false
    
    var body: some View {
        NavigationView {
            List {
                // embeded below
                profile
                
                menu
                
                links
                
            }
            .listStyle(.automatic) //.automatic change following the platform
            .navigationTitle("Account")
        }
    }
    
    var profile: some View {
        VStack {
            Image(systemName: "person.crop.circle.fill.badge.checkmark")
                .symbolVariant(.circle.fill)
                .font(.system(size: 32))
                .symbolRenderingMode(.palette)
                .foregroundStyle(.blue, .blue.opacity(0.3)) //customize colors
                .padding()
                .background(Circle().fill(.ultraThinMaterial))
                .background(Image(systemName: "hexagon").symbolVariant(.fill)
                                .foregroundColor(.blue)
                                .font(.system(size: 200))
                                .offset(x: -50, y: -100))
            Text("The GIZzz")
                .font(.title.weight(.semibold))
            Image(systemName: "location")
                .imageScale(.large)
            Text("Thailand")
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding()
    }
    
    var menu: some View {
        Section {
            NavigationLink(destination: ContentView()) {
                Label("Setting", systemImage: "gear")
            }
            NavigationLink { Text("Billing")} label: {
                Label("Billing", systemImage: "creditcard")
            }
            NavigationLink { Text("Help")} label: {
                Label("Help", systemImage: "questionmark")
            }
        }
        //inherite style from parents
        .accentColor(.primary)
        .listRowSeparatorTint(.blue) // seperator cplor
        .listRowSeparator(.hidden)
    }
    
    var links: some View {
        //data from API should us optional to prevent null
        Section {
            if !isDeleted {  Link(destination: URL(string: "https://apple.com")!) {
                    HStack {
                        Label("Apple", systemImage: "house")
                        Spacer()
                        Image(systemName: "link")
                            .foregroundColor(.secondary)
                    }
                }
                .swipeActions(edge: .leading, allowsFullSwipe: false) {
                    Button(action: { isDeleted = true}) {
                        Label("Delete", systemImage: "trash")
                    }
                    .tint(.red.opacity(0.8))
                    
                    pinButton
                }
            }
            
            Link(destination: URL(string: "https://youtube.com")!) {
                HStack {
                    Label("Youtube", systemImage: "tv")
                    Spacer()
                    Image(systemName: "link")
                        .foregroundColor(.secondary)
                }
            }
            .swipeActions(edge: .leading, allowsFullSwipe: false) {
                Button(action: { isDeleted = true}) {
                    Label("Delete", systemImage: "trash")
                }
                .tint(.red.opacity(0.8))
                
                pinButton
            }
            
        }
        //inherite style from parents
        .accentColor(.primary)
        .listRowSeparator(.hidden)
    }
    
    var pinButton: some View {
        Button {isPinned.toggle()} label : {
            if isPinned {
                Label("Unpin", systemImage: "pin.slash")
            }else {
                Label("Pin", systemImage: "pin")
            }
        }
        .tint(isPinned ? .gray.opacity(0.8) : .yellow.opacity(0.8))
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
