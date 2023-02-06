//
//  EarnHistoryViewModel.swift
//  BBWal
//
//  Created by Вячеслав on 1/29/23.
//

import SwiftUI

final class EarnHistoryViewModel: ObservableObject {
    
    @Published var networks: [String] = ["BSC", "ETH", "Solana", "Polygon"]
    @Published var current_network: String = ""
    
    @Published var types: [String] = ["LP", "Single", "Stablecoins LP"]
    @Published var current_type: String = ""
}
