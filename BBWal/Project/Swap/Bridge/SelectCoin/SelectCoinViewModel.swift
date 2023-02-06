//
//  SelectCoinViewModel.swift
//  BBWal
//
//  Created by Вячеслав on 1/29/23.
//

import SwiftUI

final class SelectCoinViewModel: ObservableObject {
    
    @Published var search: String = ""
    
    @Published var tabs: [String] = ["All", "Ethereum", "Polygon", "Tron", "BNB Smart"]
    @Published var current_tab: String = "All"
}
