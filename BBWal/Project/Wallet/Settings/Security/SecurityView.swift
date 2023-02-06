//
//  SecurityView.swift
//  BBWal
//
//  Created by Вячеслав on 1/24/23.
//

import SwiftUI

struct SecurityView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Settings")
                        .foregroundColor(.white)
                        .font(.system(size: 18, weight: .semibold))
                    
                    HStack {
                        
                        Button(action: {
                            
                            presentationMode.wrappedValue.dismiss()
                            
                        }, label: {
                            
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
                        
                        VStack {
                            
                            Button(action: {}, label: {
                                
                                HStack {
                                    
                                    Text("Pattern Unlock")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("On")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 12, weight: .regular))
                                    
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(Color("primary"))
                                        .font(.system(size: 13, weight: .regular))
                                }
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                            })
                            
                            Button(action: {}, label: {
                                
                                HStack {
                                    
                                    Text("Face ID")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(Color("primary"))
                                        .font(.system(size: 13, weight: .regular))
                                }
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                            })
                            .padding(.bottom)
                            
                            Button(action: {}, label: {
                                
                                HStack {
                                    
                                    Text("Auto-Signing")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("Off")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 12, weight: .regular))
                                    
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(Color("primary"))
                                        .font(.system(size: 13, weight: .regular))
                                }
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                            })
                            
                            Text("In Auto signing mode, tou can sign transactions without authenication after signing the first transaction in a specific timeframe. Auto signing only works on software wallets.")
                                .foregroundColor(.gray)
                                .font(.system(size: 12, weight: .regular))
                                .padding(.horizontal)
                            
                            Button(action: {}, label: {
                                
                                HStack {
                                    
                                    Text("Auto-Lock")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("Off")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 12, weight: .regular))
                                    
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(Color("primary"))
                                        .font(.system(size: 13, weight: .regular))
                                }
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                            })
                            
                            Text("Automatically lock your wallet after BBApp is inactive in the background for a time")
                                .foregroundColor(.gray)
                                .font(.system(size: 12, weight: .regular))
                                .padding(.horizontal)
                            
                            Button(action: {}, label: {
                                
                                HStack {
                                    
                                    Text("Change security password")
                                        .foregroundColor(.white)
                                        .font(.system(size: 14, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("Off")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 12, weight: .regular))
                                    
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(Color("primary"))
                                        .font(.system(size: 13, weight: .regular))
                                }
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                            })
                        }
                        .padding(.horizontal)
                    }
                }
                
                Spacer()
            }
        }
    }
}

struct SecurityView_Previews: PreviewProvider {
    static var previews: some View {
        SecurityView()
    }
}
