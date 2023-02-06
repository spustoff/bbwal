//
//  DefiView.swift
//  BBWal
//
//  Created by Вячеслав on 1/23/23.
//

import SwiftUI

struct DefiView: View {
    
    @StateObject var viewModel = DefiViewModel()
    
    var body: some View {
        
        VStack {
            
            ScrollView(.vertical, showsIndicators: true) {
                
                LazyVStack {
                    
                    // MARK: - BALANCE
                    VStack(alignment: .center, spacing: 10, content: {
                        
                        HStack {
                            
                            Text("Balance")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .regular))
                            
                            Image(systemName: "eye")
                                .foregroundColor(.gray)
                                .font(.system(size: 13))
                        }
                        
                        Text("$\(viewModel.balance)")
                            .foregroundColor(.white)
                            .font(.system(size: 23, weight: .semibold))
                    })
                    .padding(.top, 30)
                    
                    // MARK: - BAR
                    HStack {
                        
                        HStack {
                            
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.gray)
                                .font(.system(size: 17, weight: .regular))
                            
                            ZStack(alignment: .leading, content: {
                                
                                Text("Search coin")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                                    .opacity(viewModel.search.isEmpty ? 1 : 0)
                                
                                TextField("", text: $viewModel.search)
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .regular))
                            })
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                        
                        Button(action: {}, label: {
                            
                            Text("All")
                                .foregroundColor(.white)
                                .font(.system(size: 15, weight: .medium))
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                        })
                    }
                    .padding(.horizontal)
                }
            }
        }
    }
}

struct DefiView_Previews: PreviewProvider {
    static var previews: some View {
        DefiView()
    }
}
