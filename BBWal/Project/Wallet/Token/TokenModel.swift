//
//  TokenModel.swift
//  BBWal
//
//  Created by Вячеслав on 1/23/23.
//

import SwiftUI

struct TokenModel: Identifiable {
    
    var id = UUID().uuidString
    
    var type: String
    
    var title: String
    var address: String
    
    var date: String
    var amount: String
}
