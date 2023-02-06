//
//  ReceiveView.swift
//  BBWal
//
//  Created by Вячеслав on 1/23/23.
//

import SwiftUI

struct ReceiveView: View {
    
    var body: some View {
        
        ZStack {
            
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                // MARK: - HEADER
                
                ZStack {
                    
                    Text("Receive")
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
                
                Text("Wallet #1")
                    .foregroundColor(.white)
                    .font(.system(size: 13, weight: .medium))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(height: 45)
                    .padding(.leading)
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                    .padding(.horizontal)
                    .padding(.top)
                
                VStack {
                    
                    HStack {
                        
                        Image("Bitcoin")
                            .resizable()
                            .frame(width: 22, height: 22)
                        
                        Text("BTC (Coin)")
                            .foregroundColor(.white)
                            .font(.system(size: 14, weight: .medium))
                        
                        Image(systemName: "chevron.down")
                            .foregroundColor(.white)
                            .font(.system(size: 14, weight: .regular))
                    }
                    
                    Image("qr")
                    
                    HStack {
                        
                        Button(action: {}, label: {
                            
                            Image(systemName: "chevron.left")
                                .foregroundColor(.gray)
                                .font(.system(size: 16, weight: .medium))
                                .frame(maxWidth: .infinity, alignment: .leading)
                        })
                        
                        Text("[psfmkjogvs428")
                            .foregroundColor(.gray)
                            .font(.system(size: 14, weight: .regular))
                            .multilineTextAlignment(.center)
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        Button(action: {}, label: {
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(.gray)
                                .font(.system(size: 16, weight: .medium))
                                .frame(maxWidth: .infinity, alignment: .trailing)
                        })
                    }
                    .padding()
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                .padding(.horizontal)
                
                HStack {
                    
                    Button(action: {}, label: {
                        
                        Text("Share")
                            .foregroundColor(Color("primary"))
                            .font(.system(size: 15, weight: .semibold))
                            .frame(maxWidth: .infinity)
                            .frame(height: 45)
                            .background(RoundedRectangle(cornerRadius: 10).stroke(Color("primary")))
                    })
                    
                    Spacer()
                    
                    Button(action: {}, label: {
                        
                        Text("Copy")
                            .foregroundColor(.black)
                            .font(.system(size: 15, weight: .semibold))
                            .frame(maxWidth: .infinity)
                            .frame(height: 45)
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("primary")))
                    })
                }
                .padding(.horizontal)
                
                Text("This address can only accept assets on BTC (Coin). Sending any other types of tokens to this address will result in permanent loss.")
                    .foregroundColor(.gray)
                    .font(.system(size: 14, weight: .regular))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                Spacer()
            }
        }
    }
}

struct ReceiveView_Previews: PreviewProvider {
    static var previews: some View {
        ReceiveView()
    }
}
