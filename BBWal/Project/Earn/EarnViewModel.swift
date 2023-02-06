//
//  EarnViewModel.swift
//  BBWal
//
//  Created by Вячеслав on 1/29/23.
//

import SwiftUI

final class EarnViewModel: ObservableObject {

    @Published var search: String = ""
    
    @Published var tabs: [String] = ["All", "Deposited"]
    @Published var current_tab: String = "All"
}
