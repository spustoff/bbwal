//
//  SwapViewModel.swift
//  BBWal
//
//  Created by Вячеслав on 1/29/23.
//

import SwiftUI

final class SwapViewModel: ObservableObject {
    
    @Published var tabs: [String] = ["Swap", "Bridge", "Exchange"]
    @Published var current_tab: Int = 0
}
