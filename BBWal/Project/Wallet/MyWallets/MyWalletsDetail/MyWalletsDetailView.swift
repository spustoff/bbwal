//
//  MyWalletsDetailView.swift
//  BBWal
//
//  Created by Вячеслав on 1/24/23.
//

import SwiftUI

struct MyWalletsDetailView: View {
    
    var body: some View {
        
        ZStack {
            
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Wallet Details")
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
                        
                        Circle()
                            .fill(.gray.opacity(0.6))
                            .frame(width: 96, height: 96)
                        
                        Text("Wallet #1")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .medium))
                        
                        HStack {
                            
                            Text("Created by")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .medium))
                            
                            Spacer()
                            
                            Text("Mnemonic phrase")
                                .foregroundColor(.gray)
                                .font(.system(size: 13, weight: .regular))
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                        .padding(.horizontal)
                        
                        HStack {
                            
                            Text("Created time")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .medium))
                            
                            Spacer()
                            
                            Text("2023-02-21 17:35:35")
                                .foregroundColor(.gray)
                                .font(.system(size: 13, weight: .regular))
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                        .padding(.horizontal)
                        
                        HStack {
                            
                            Text("Security suffix")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .medium))
                            
                            Spacer()
                            
                            Text("DPJ")
                                .foregroundColor(.gray)
                                .font(.system(size: 13, weight: .regular))
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                        .padding(.horizontal)
                        .padding(.bottom)
                        
                        HStack {
                            
                            Text("Mnemonic phrase")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .medium))
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color("primary"))
                                .font(.system(size: 13, weight: .regular))
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                        .padding(.horizontal)
                        
                        HStack {
                            
                            Text("Export public key")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .medium))
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color("primary"))
                                .font(.system(size: 13, weight: .regular))
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                        .padding(.horizontal)
                        
                        HStack {
                            
                            Text("Export private key")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .medium))
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color("primary"))
                                .font(.system(size: 13, weight: .regular))
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                        .padding(.horizontal)
                        
                        HStack {
                            
                            Text("Create account")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .medium))
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color("primary"))
                                .font(.system(size: 13, weight: .regular))
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                        .padding(.horizontal)
                        
                        HStack {
                            
                            Text("Coins")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .medium))
                            
                            Spacer()
                            
                            Text("$0")
                                .foregroundColor(.gray)
                                .font(.system(size: 13, weight: .regular))
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                        .padding(.horizontal)
                    }
                    .padding(.top)
                }
                
                Spacer()
                
                Button(action: {}, label: {
                    
                    Text("Remove Wallet")
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 45)
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color.red))
                        .padding()
                        .padding(.bottom)
                })
            }
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

struct MyWalletsDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MyWalletsDetailView()
    }
}
