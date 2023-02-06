//
//  BrowserViewModel.swift
//  BBWal
//
//  Created by Вячеслав on 1/29/23.
//

import SwiftUI

final class BrowserViewModel: ObservableObject {
    
    @Published var search: String = ""
    
    @Published var tabs: [String] = ["Hot", "Favorites", "BBDex", "BBPlace", "EBBS"]
    @Published var current_tab: String = "Hot"
}
