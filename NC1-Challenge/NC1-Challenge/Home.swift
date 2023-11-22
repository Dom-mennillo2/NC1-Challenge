//
//  Reminder.swift
//  NC1-Challenge
//
//  Created by Domenico Mennillo on 15/11/23.
//

import Foundation
import SwiftUI




struct Home : View  {
    @State var num: Int
    var body: some View {
    
        List(0..<num){_ in
            Text("Hello World !!")
        }
        
    }
}
#Preview {
    Home(num:10)
}
