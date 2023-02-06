//
//  CurrencyViewModel.swift
//  BBWal
//
//  Created by Вячеслав on 1/24/23.
//

import SwiftUI

final class CurrencyViewModel: ObservableObject {
    
    @Published var currencies: [String] = ["TRY", "TRY", "TRY", "TRY", "TRY", "TRY", "TRY", "TRY", "TRY", "TRY", "TRY", "TRY", "TRY", "TRY", "TRY"]
    
    @Published var search: String = ""
}
