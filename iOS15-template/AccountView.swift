//
//  AccountView.swift
//  iOS15-template
//
//  Created by admin on 6/2/2565 BE.
//

import SwiftUI

struct AccountView: View {
    @State var isDeleted = false
    
    var body: some View {
        NavigationView {
            List {
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
                            
                            Button {} label : {
                                Label("Pin", systemImage: "pin")
                            }
                            .tint(.yellow.opacity(0.8))
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
                }
                //inherite style from parents
                .accentColor(.primary)
                .listRowSeparator(.hidden)
            }
            .listStyle(.automatic) //.automatic change following the platform
            .navigationTitle("Account")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
