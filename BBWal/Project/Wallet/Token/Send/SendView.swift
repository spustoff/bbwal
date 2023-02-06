//
//  SendView.swift
//  BBWal
//
//  Created by Вячеслав on 1/23/23.
//

import SwiftUI

struct SendView: View {
    
    @StateObject var viewModel = SendViewModel()
    
    var body: some View {
        
        ZStack {
            
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                // MARK: - HEADER
                
                ZStack {
                    
                    Text("Send")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .semibold))
                    
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
                
                ScrollView(.vertical, showsIndicators: true) {
                    
                    LazyVStack {
                        
                        HStack {
                            
                            Text("Wallet #1")
                                .foregroundColor(.white)
                                .font(.system(size: 17, weight: .medium))
                            
                            Spacer()
                            
                            Text("DJlkjpodsaopjkfds")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .regular))
                        }
                        .padding()
                        
                        HStack {
                            
                            Image("Bitcoin")
                                .resizable()
                                .frame(width: 20, height: 20)
                            
                            VStack(alignment: .leading, content: {
                                
                                Text("BTC")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .medium))
                                
                                Text("Coin")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 12, weight: .regular))
                            })
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                        .padding(.horizontal)
                        
                        VStack {
                            
                            HStack {
                                
                                Text("To")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .medium))
                                
                                Spacer()
                                
                                Button(action: {}, label: {
                                    
                                    Image(systemName: "person.crop.circle")
                                        .foregroundColor(Color("primary"))
                                        .font(.system(size: 15, weight: .medium))
                                })
                            }
                            .padding(.horizontal)
                            
                            HStack {
                                
                                ZStack(alignment: .leading, content: {
                                    
                                    Text("Please input receive address")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 14, weight: .regular))
                                        .opacity(viewModel.to_address.isEmpty ? 1 : 0)
                                    
                                    TextField("", text: $viewModel.to_address)
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .regular))
                                })
                                
                                Spacer()
                                
                                Button(action: {}, label: {
                                    
                                    Text("Paste")
                                        .foregroundColor(Color("primary"))
                                        .font(.system(size: 13, weight: .medium))
                                })
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                            .padding(.horizontal)
                            
                            VStack(alignment: .leading, content: {
                                
                                Text("Amount")
                                    .foregroundColor(.white)
                                    .font(.system(size: 16, weight: .medium))
                                    .padding(.horizontal)
                                    .padding(.top)
                                
                                HStack {
                                    
                                    ZStack(alignment: .leading, content: {
                                        
                                        Text("0.00")
                                            .foregroundColor(.gray)
                                            .font(.system(size: 14, weight: .regular))
                                            .opacity(viewModel.to_address.isEmpty ? 1 : 0)
                                        
                                        TextField("", text: $viewModel.to_address)
                                            .foregroundColor(.white)
                                            .font(.system(size: 14, weight: .regular))
                                            .keyboardType(.decimalPad)
                                    })
                                    
                                    Spacer()
                                    
                                    Text("USD")
                                        .foregroundColor(Color("primary"))
                                        .font(.system(size: 13, weight: .medium))
                                }
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                                .padding(.horizontal)
                            })
                            
                            Button(action: {}, label: {
                                
                                Text("+ Add receive address")
                                    .foregroundColor(Color("primary"))
                                    .font(.system(size: 15, weight: .medium))
                                    .frame(maxWidth: .infinity)
                                    .frame(height: 45)
                                    .background(RoundedRectangle(cornerRadius: 10).stroke(Color("primary")))
                                    .padding()
                            })
                            
                            VStack(alignment: .leading, content: {
                                
                                Text("Network fee")
                                    .foregroundColor(.white)
                                    .font(.system(size: 15, weight: .medium))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                HStack {
                                    
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        
                                        LazyHStack {
                                            
                                            ForEach(viewModel.networks, id: \.self) { index in
                                                
                                                VStack {
                                                    
                                                    Text(index)
                                                        .foregroundColor(viewModel.current_network == index ? .white : .gray)
                                                        .font(.system(size: 14, weight: .regular))
                                                    
                                                    Text("10 sat/B")
                                                        .foregroundColor(.gray)
                                                        .font(.system(size: 12, weight: .regular))
                                                }
                                                .padding()
                                                .background(RoundedRectangle(cornerRadius: 10).stroke(viewModel.current_network == index ? Color("primary") : .gray.opacity(0.3)))
                                                .onTapGesture {
                                                    
                                                    withAnimation(.spring()) {
                                                        
                                                        viewModel.current_network = index
                                                    }
                                                }
                                            }
                                        }
                                        .padding(1)
                                    }
                                }
                            })
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                            .padding()
                        }
                        .padding(.vertical)
                    }
                }
                
                Spacer()
            }
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

struct SendView_Previews: PreviewProvider {
    static var previews: some View {
        SendView()
    }
}
