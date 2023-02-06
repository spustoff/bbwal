//
//  DefiViewModel.swift
//  BBWal
//
//  Created by Вячеслав on 1/23/23.
//

import SwiftUI

final class DefiViewModel: ObservableObject {
    
    @Published var search: String = ""
    @Published var balance: Double = 123456.99
}
