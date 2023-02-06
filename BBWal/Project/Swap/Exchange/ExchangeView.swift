//
//  ExchangeView.swift
//  BBWal
//
//  Created by Вячеслав on 1/29/23.
//

import SwiftUI

struct ExchangeView: View {
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                Image("Bitcoin")
                    
                Text("BBApp has partnered with third-party exchanges to facilitate your trading experience")
                    .foregroundColor(.gray)
                    .font(.system(size: 14, weight: .regular))
                    .multilineTextAlignment(.center)
                    .padding()
                
                HStack {
                    
                    VStack(alignment: .leading, content: {
                        
                        Text("Binance")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .medium))
                        
                        Text("Spot, futures & saving, KYC requied")
                            .foregroundColor(.gray)
                            .font(.system(size: 13, weight: .regular))
                    })
                    
                    Spacer()
                    
                    Image(systemName: "square.and.arrow.up")
                        .foregroundColor(Color("primary"))
                        .font(.system(size: 17, weight: .regular))
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                .padding(.horizontal)
                
                HStack {
                    
                    VStack(alignment: .leading, content: {
                        
                        Text("ApolloX")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .medium))
                        
                        Text("Spot, futures & saving, KYC requied")
                            .foregroundColor(.gray)
                            .font(.system(size: 13, weight: .regular))
                    })
                    
                    Spacer()
                    
                    Image(systemName: "square.and.arrow.up")
                        .foregroundColor(Color("primary"))
                        .font(.system(size: 17, weight: .regular))
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                .padding(.horizontal)
                
                HStack {
                    
                    VStack(alignment: .leading, content: {
                        
                        Text("MEXC")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .medium))
                        
                        Text("Spot, futures & saving, KYC requied")
                            .foregroundColor(.gray)
                            .font(.system(size: 13, weight: .regular))
                    })
                    
                    Spacer()
                    
                    Image(systemName: "square.and.arrow.up")
                        .foregroundColor(Color("primary"))
                        .font(.system(size: 17, weight: .regular))
                }
                .padding()
                .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                .padding(.horizontal)
                
                Spacer()
            }
        }
    }
}

struct ExchangeView_Previews: PreviewProvider {
    static var previews: some View {
        ExchangeView()
    }
}
