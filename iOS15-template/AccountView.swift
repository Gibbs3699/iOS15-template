//
//  AccountView.swift
//  iOS15-template
//
//  Created by admin on 6/2/2565 BE.
//

import SwiftUI

struct AccountView: View {
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
                    Label("Setting", systemImage: "gear")
                    Label("Billing", systemImage: "creditcard")
                    Label("Help", systemImage: "questionmark")
                }
                .listRowSeparatorTint(.blue) // seperator cplor
    //                .listRowSeparator(.hidden)
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
