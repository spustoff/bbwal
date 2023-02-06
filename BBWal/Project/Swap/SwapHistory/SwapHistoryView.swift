//
//  SwapHistoryView.swift
//  BBWal
//
//  Created by Вячеслав on 1/29/23.
//

import SwiftUI

struct SwapHistoryView: View {
    
    @StateObject var viewModel = SwapHistoryViewModel()
    
    @Namespace var animation
 
    var body: some View {
        
        ZStack {
            
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Swap History")
                        .foregroundColor(.white)
                        .font(.system(size: 17, weight: .medium))
                    
                    HStack {
                        
                        Button(action: {}, label: {
                            
                            Image(systemName: "chevron.left")
                                .foregroundColor(.white)
                                .font(.system(size: 17, weight: .medium))
                        })
                        
                        Spacer()
                    }
                }
                .padding()
                
                HStack {
                    
                    Text("From: ")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium))
                    
                    Image(systemName: "calendar")
                        .foregroundColor(Color("primary"))
                        .font(.system(size: 15, weight: .regular))
                    
                    Spacer()
                    
                    Text("To: ")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium))
                    
                    Image(systemName: "calendar")
                        .foregroundColor(Color("primary"))
                        .font(.system(size: 15, weight: .regular))
                }
                .padding(.horizontal, 70)
                .padding(.top)
                
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
                        
                        ForEach(1...5, id: \.self) { index in
                            
                            HStack {
                                
                                VStack(alignment: .leading, spacing: 5, content: {
                                    
                                    Text("Send")
                                        .foregroundColor(.white)
                                        .font(.system(size: 18, weight: .medium))
                                    
                                    Text("POjdpioSDP0-UJPjkofkl;djp9df")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 13, weight: .regular))
                                })
                                
                                Spacer()
                                
                                VStack(alignment: .trailing, content: {
                                    
                                    Text("1 BTC")
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .medium))
                                    
                                    Text("13:23:00")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 12, weight: .regular))
                                })
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                            .padding(.horizontal)
                        }
                    }
                }
                    
                Spacer()
            }
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

struct SwapHistoryView_Previews: PreviewProvider {
    static var previews: some View {
        SwapHistoryView()
    }
}
