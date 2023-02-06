//
//  BridgeView.swift
//  BBWal
//
//  Created by Вячеслав on 1/29/23.
//

import SwiftUI

struct BridgeView: View {
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                NavigationLink(destination: {
                    
                    SelectCoinView()
                        .navigationBarBackButtonHidden()
                    
                }, label: {
                    
                    HStack {
                        
                        Image("Bitcoin")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 30, height: 30)
                        
                        Text("Select Coin")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .medium))
                        
                        Spacer()
                        
                        Image(systemName: "chevron.down")
                            .foregroundColor(.white)
                            .font(.system(size: 14, weight: .regular))
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                    .padding()
                })
                
                NavigationLink(destination: {
                    
                    PayView()
                        .navigationBarBackButtonHidden()
                    
                }, label: {
                    
                    VStack(alignment: .leading, content: {
                        
                        Text("Pay")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .medium))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        HStack {
                            
                            Image("Bitcoin")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 30, height: 30)
                            
                            Text("Select source chain")
                                .foregroundColor(.white)
                                .font(.system(size: 15, weight: .medium))
                            
                            Spacer()
                            
                            Image(systemName: "chevron.down")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                        }
                    })
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                    .padding(.horizontal)
                    .padding(.top)
                })
                
                VStack(alignment: .leading, content: {
                    
                    Text("Receive")
                        .foregroundColor(.white)
                        .font(.system(size: 16, weight: .medium))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    HStack {
                        
                        Image("Bitcoin")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 30, height: 30)
                        
                        Text("Select source chain")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .medium))
                        
                        Spacer()
                        
                        Image(systemName: "chevron.down")
                            .foregroundColor(.white)
                            .font(.system(size: 14, weight: .regular))
                    }
                })
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                .padding(.horizontal)
                
                HStack {
                    
                    Text("Amount")
                        .foregroundColor(.white)
                        .font(.system(size: 17, weight: .medium))
                    
                    Spacer()
                    
                    Text("0")
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .semibold))
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                .padding(.horizontal)
                
                Button(action: {}, label: {
                    
                    Text("Bridge")
                        .foregroundColor(.black)
                        .font(.system(size: 15, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                        .padding()
                })
                
                Spacer()
            }
        }
    }
}

struct BridgeView_Previews: PreviewProvider {
    static var previews: some View {
        BridgeView()
    }
}
