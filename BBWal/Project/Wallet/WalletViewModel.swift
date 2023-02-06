//
//  WalletViewModel.swift
//  BBWal
//
//  Created by Вячеслав on 1/23/23.
//

import SwiftUI

final class WalletViewModel: ObservableObject {
    
    @Published var tabs: [String] = ["Coin", "NFT", "DeFi"]
    @Published var current_tab: Int = 0
    
    @Published var balance: Double = 123456.99
    
    @Published var search: String = ""
    
    @Published var coins: [WalletModel] = [
    
        WalletModel(name: "BTC", price_dolar: 23208.31, current_price: 5.31953, exc: 4.13),
        WalletModel(name: "ETH", price_dolar: 3564.31, current_price: 5.3453, exc: 4.13),
        WalletModel(name: "BNB", price_dolar: 75628.31, current_price: 5.31353, exc: 4.13),
        WalletModel(name: "BNB", price_dolar: 508.31, current_price: 5.3953, exc: 4.13),
        WalletModel(name: "BTC", price_dolar: 220658.31, current_price: 5.3653, exc: 4.13),
        WalletModel(name: "ETH", price_dolar: 2325348.31, current_price: 5.3953, exc: 4.13),
    ]
}
