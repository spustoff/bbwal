//
//  SwapView.swift
//  BBWal
//
//  Created by Вячеслав on 1/29/23.
//

import SwiftUI

struct SwapView: View {
    
    @StateObject var viewModel = SwapViewModel()
    @Namespace var animation
    
    var body: some View {
        
        ZStack {
            
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    HStack {
                        
                        Text("Wallet #1")
                            .foregroundColor(.white)
                            .font(.system(size: 17, weight: .medium))
                        
                        Image(systemName: "chevron.down")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .regular))
                    }
                }
                .padding()
                
                HStack {
                    
                    ForEach(Array(zip(viewModel.tabs.indices, viewModel.tabs)), id: \.0) { index, name in
                        
                        VStack {
                            
                            Text(name)
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
                
                TabView(selection: $viewModel.current_tab, content: {
                    
                    SwapTab()
                        .tag(0)
                    
                    BridgeView()
                        .tag(1)
                    
                    ExchangeView()
                        .tag(2)
                })
                .tabViewStyle(.page(indexDisplayMode: .never))
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
                
                Spacer()
            }
        }
    }
}

struct SwapView_Previews: PreviewProvider {
    static var previews: some View {
        SwapView()
    }
}
