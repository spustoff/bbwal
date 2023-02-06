//
//  PayViewModel.swift
//  BBWal
//
//  Created by Вячеслав on 1/29/23.
//

import SwiftUI

final class PayViewModel: ObservableObject {
    
    @Published var search: String = ""
    
    @Published var tabs: [String] = ["All", "Hot", "USD"]
    @Published var current_tab: String = "All"
}
