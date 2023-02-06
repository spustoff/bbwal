//
//  TokenViewModel.swift
//  BBWal
//
//  Created by Вячеслав on 1/23/23.
//

import SwiftUI

final class TokenViewModel: ObservableObject {
    
    @Published var tabs: [String] = ["All", "Receive", "Send", "Unconfirm"]
    @Published var current_tab: String = "All"
    
    @Published var history: [TokenModel] = [
    
        TokenModel(type: "up", title: "Send", address: "jopdpJPGOFJDopfjs", date: "23.01.2023 14:00", amount: "1 BTC"),
        TokenModel(type: "down", title: "Receive", address: "jopdpJPGOFJDopfjs", date: "23.01.2023 14:00", amount: "1 BTC"),
    ]
}

