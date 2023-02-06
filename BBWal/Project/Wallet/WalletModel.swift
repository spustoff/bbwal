//
//  WalletModel.swift
//  BBWal
//
//  Created by Вячеслав on 1/23/23.
//

import SwiftUI

struct WalletModel: Identifiable {
    
    var id = UUID().uuidString
    
    var name: String
    var price_dolar: Double
    
    var current_price: Double
    var exc: Double
}
