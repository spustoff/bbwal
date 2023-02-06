//
//  TradeView.swift
//  BBWal
//
//  Created by Вячеслав on 1/29/23.
//

import SwiftUI

struct TradeView: View {
    
    @StateObject var viewModel = TradeViewModel()
    @Namespace var animation
    
    var body: some View {
        
        ZStack {
            
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Wallet #1")
                        .foregroundColor(.white)
                        .font(.system(size: 17, weight: .medium))
                    
                    HStack {
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                            
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                                .font(.system(size: 17, weight: .regular))
                        })
                    }
                }
                .padding()
                
                HStack {
                    
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                    
                    ZStack(alignment: .leading, content: {
                        
                        Text("Search")
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
                .padding(.horizontal)
                .padding(.bottom)
                
                HStack {
                    
                    ForEach(viewModel.tabs, id: \.self) { index in
                        
                        VStack {
                            
                            Text(index)
                                .foregroundColor(viewModel.current_tab == index ? .white : .gray)
                                .font(.system(size: 16, weight: .medium))
                                .frame(maxWidth: .infinity)
                                .onTapGesture {
                                    
                                    withAnimation(.spring()) {
                                        
                                        viewModel.current_tab = index
                                    }
                                }
                            
                            if viewModel.current_tab == index {
                                
                                RoundedRectangle(cornerRadius: 5)
                                    .fill(.yellow)
                                    .frame(height: 1)
                                    .matchedGeometryEffect(id: "tab", in: animation)
                                
                            } else {
                                
                                RoundedRectangle(cornerRadius: 5)
                                    .fill(.clear)
                                    .frame(height: 1)
                            }
                        }
                    }
                }
                .padding()
                
                ScrollView(.vertical, showsIndicators: true) {
                    
                    LazyVStack {
                        
                        ForEach(1...23, id: \.self) { index in
                            
                            HStack {
                                
                                VStack(alignment: .leading, content: {
                                    
                                    Text("BTC")
                                        .foregroundColor(.white)
                                        .font(.system(size: 17, weight: .medium))
                                    
                                    Text("Vol 0.5B")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 14, weight: .regular))
                                })
                                
                                Spacer()
                                
                                VStack(alignment: .trailing, content: {
                                    
                                    Text("22 818,44")
                                        .foregroundColor(.white)
                                        .font(.system(size: 18, weight: .medium))
                                    
                                    Text("-34%")
                                        .foregroundColor(.red)
                                        .font(.system(size: 14, weight: .regular))
                                })
                            }
                            .padding()
                        }
                    }
                }
                
                Spacer()
            }
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

struct TradeView_Previews: PreviewProvider {
    static var previews: some View {
        TradeView()
    }
}
