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
                Section {
                    Text("Setting")
                    Text("Billing")
                    Text("Help")
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
