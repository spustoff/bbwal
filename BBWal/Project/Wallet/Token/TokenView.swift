//
//  TokenView.swift
//  BBWal
//
//  Created by Вячеслав on 1/23/23.
//

import SwiftUI

struct TokenView: View {
    
    @StateObject var viewModel = TokenViewModel()
    
    @Namespace var animation
    
    var body: some View {
        
        ZStack {
            
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                // MARK: - HEADER
                
                ZStack {
                    
                    Text("BTC")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .semibold))
                    
                    HStack {
                        
                        Button(action: {}, label: {
                            
                            Image(systemName: "chevron.left")
                                .foregroundColor(.white)
                                .font(.system(size: 17, weight: .medium))
                        })
                        
                        Spacer()
                        
                        Button(action: {}, label: {
                            
                            Image("Trade")
                                .renderingMode(.template)
                                .foregroundColor(Color("primary"))
                        })
                        
                        Button(action: {}, label: {
                            
                            Image(systemName: "ellipsis.circle")
                                .foregroundColor(.white)
                                .font(.system(size: 17, weight: .medium))
                        })
                    }
                }
                .padding()
                
                ScrollView(.vertical, showsIndicators: true) {
                    
                    LazyVStack {
                        
                        HStack {
                            
                            Text("Wallet #1")
                                .foregroundColor(.white)
                                .font(.system(size: 18, weight: .medium))
                            
                            Spacer()
                            
                            Text("giopdfOPopfjpdjsfpjPJ")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .regular))
                            
                            Button(action: {}, label: {
                                
                                Image(systemName: "doc.on.doc")
                                    .foregroundColor(Color("primary"))
                                    .font(.system(size: 12, weight: .regular))
                            })
                        }
                        .padding()
                        
                        VStack {
                            
                            Image("Bitcoin")
                                .padding(.bottom)
                            
                            Text("0")
                                .foregroundColor(.white)
                                .font(.system(size: 21, weight: .semibold))
                            
                            HStack {
                                
                                Text("$0 | $22 905.02")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                                
                                Text("+0,04%")
                                    .foregroundColor(.green)
                                    .font(.system(size: 14, weight: .regular))
                            }
                            
                            HStack {
                                
                                Button(action: {}, label: {
                                    
                                    Text("Swap")
                                        .foregroundColor(.black)
                                        .font(.system(size: 16, weight: .semibold))
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("primary")))
                                        .frame(maxWidth: .infinity)
                                })
                                
                                Button(action: {}, label: {
                                    
                                    Text("Receive")
                                        .foregroundColor(.black)
                                        .font(.system(size: 16, weight: .semibold))
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("primary")))
                                        .frame(maxWidth: .infinity)
                                })
                                
                                Button(action: {}, label: {
                                    
                                    Text("Send")
                                        .foregroundColor(.black)
                                        .font(.system(size: 16, weight: .semibold))
                                        .padding()
                                        .frame(maxWidth: .infinity)
                                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("primary")))
                                })
                            }
                            .padding(.top, 15)
                            .padding(.horizontal)
                            
                            HStack {
                                
                                Image("Bitcoin")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                
                                Text("Buy BTC")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15, weight: .medium))
                            }
                            .padding()
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                            .padding()
                        }
                        .padding(.top, 30)
                        
                        HStack {
                            
                            ForEach(viewModel.tabs, id: \.self) { index in
                                
                                VStack {
                                    
                                    Button(action: {
                                        
                                        withAnimation(.spring()) {
                                            
                                            viewModel.current_tab = index
                                        }
                                        
                                    }, label: {
                                        
                                        Text(index)
                                            .foregroundColor(viewModel.current_tab == index ? .white : .gray)
                                            .font(.system(size: 15, weight: .medium))
                                            .frame(maxWidth: .infinity)
                                    })
                                    
                                    if viewModel.current_tab == index {
                                        
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color("primary"))
                                            .frame(height: 3)
                                            .matchedGeometryEffect(id: "tab", in: animation)
                                        
                                    } else {
                                        
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(.clear)
                                            .frame(height: 3)
                                    }
                                }
                            }
                        }
                        .padding(.horizontal)
                        
                        ForEach(viewModel.history) { index in
                            
                            HStack {
                                
                                if index.type == "up" {
                                    
                                    Image(systemName: "arrow.up.forward")
                                        .foregroundColor(Color("primary"))
                                        .font(.system(size: 15, weight: .medium))
                                    
                                } else {
                                    
                                    Image(systemName: "arrow.down")
                                        .foregroundColor(Color("primary"))
                                        .font(.system(size: 15, weight: .medium))
                                }
                                
                                VStack(alignment: .leading, content: {
                                    
                                    Text(index.title)
                                        .foregroundColor(.white)
                                        .font(.system(size: 15, weight: .medium))
                                    
                                    Text(index.address)
                                        .foregroundColor(.gray)
                                        .font(.system(size: 13, weight: .regular))
                                })
                                
                                Spacer()
                                
                                VStack(alignment: .trailing, content: {
                                    
                                    Text(index.amount)
                                        .foregroundColor(.white)
                                        .font(.system(size: 18, weight: .medium))
                                    
                                    Text(index.date)
                                        .foregroundColor(.gray)
                                        .font(.system(size: 13, weight: .regular))
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

struct TokenView_Previews: PreviewProvider {
    static var previews: some View {
        TokenView()
    }
}
