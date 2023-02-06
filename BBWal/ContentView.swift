//
//  ContentView.swift
//  BBWal
//
//  Created by Вячеслав on 1/23/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTab: String = "Wallet"
    
    var body: some View {
        
        VStack(spacing: 0) {
            
            ZStack {
                
                WalletView()
                    .opacity(selectedTab == "Wallet" ? 1 : 0)
                
                TradeView()
                    .opacity(selectedTab == "Trade" ? 1 : 0)
                
                BrowserView()
                    .opacity(selectedTab == "Browser" ? 1 : 0)
                
                SwapView()
                    .opacity(selectedTab == "Swap" ? 1 : 0)
                
                EarnView()
                    .opacity(selectedTab == "Earn" ? 1 : 0)
            }
            
            VStack(spacing: 0, content: {
                
                TabBar(selectedTab: $selectedTab)
            })
            .ignoresSafeArea(.all, edges: .bottom)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
