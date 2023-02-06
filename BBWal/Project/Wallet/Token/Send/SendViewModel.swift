//
//  SendViewModel.swift
//  BBWal
//
//  Created by Вячеслав on 1/23/23.
//

import SwiftUI

final class SendViewModel: ObservableObject {
    
    @Published var to_address: String = ""
    @Published var amount: String = ""
    
    @Published var networks: [String] = ["Low", "Middle", "High"]
    @Published var current_network: String = "Low"
}
