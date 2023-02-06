//
//  TradeViewModel.swift
//  BBWal
//
//  Created by Вячеслав on 1/29/23.
//

import SwiftUI

final class TradeViewModel: ObservableObject {
    
    @Published var search: String = ""
    
    @Published var tabs: [String] = ["Favorites", "All"]
    @Published var current_tab: String = "All"
}
