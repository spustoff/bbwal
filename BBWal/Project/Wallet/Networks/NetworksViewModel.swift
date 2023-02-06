//
//  NetworksViewModel.swift
//  BBWal
//
//  Created by Вячеслав on 1/23/23.
//

import SwiftUI

final class NetworksViewModel: ObservableObject {
    
    @Published var networks: [String] = ["All", "Bitcoin", "Ethereum", "BNB Beacon Chain", "BNB Smart Chain"]
    @Published var current_network: String = "All"
    
    @Published var search: String = ""
}
