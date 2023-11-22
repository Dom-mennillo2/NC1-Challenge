//
//  IconView.swift
//  NC1-Challenge
//
//  Created by Domenico Mennillo on 20/11/23.
//

import SwiftUI
import Foundation
struct Rett:Identifiable{
    
    let id: UUID = UUID()
    var nomeSimbolo: String
    var cont: Int
    var title: String
    var colore1 : Color
    var colore2 : Color
   
   
    
  
    
}

class ElementiProm{

    var elementi : [Rett] = [Rett(nomeSimbolo: "20.circle.fill", cont: 0, title: "Today", colore1: .blue, colore2: .white),Rett(nomeSimbolo: "calendar.circle.fill", cont: 0, title: "Scheduled", colore1: .red, colore2: .white),Rett(nomeSimbolo: "tray.circle.fill", cont: 5, title: "All", colore1: .gray, colore2: .white),Rett(nomeSimbolo: "flag.circle.fill", cont: 0, title: "Marked", colore1: .yellow, colore2: .white),Rett(nomeSimbolo: "checkmark.circle.fill", cont: 2, title: "Completed", colore1: .gray, colore2: .white)]
    
    
}
