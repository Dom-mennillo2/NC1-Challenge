//
//  SwiftUIView.swift
//  NC1-Challenge
//
//  Created by Domenico Mennillo on 23/11/23.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        
        List{
            Section{
                NavigationLink(destination: Home(num:0)){
                    Text("Reminder")
                }
            }  .buttonStyle(PlainButtonStyle())
        }
    }
}

#Preview {
    ListView()
}
