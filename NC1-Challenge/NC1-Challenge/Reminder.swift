//
//  Data.swift
//  NC1-Challenge
//
//  Created by Domenico Mennillo on 22/11/23.
//

import Foundation
import SwiftData

@Model
final class Reminder {
    var title: String = ""
    var des : String = ""
    
    init(title: String, des: String) {
        self.title = title
        self.des = des
    }
    
}
