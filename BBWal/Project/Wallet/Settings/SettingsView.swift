//
//  SettingsView.swift
//  BBWal
//
//  Created by Вячеслав on 1/24/23.
//

import SwiftUI

struct SettingsView: View {
    
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
                        
                        NavigationLink(destination: {
                            
                            SecurityView()
                                .navigationBarBackButtonHidden()
                            
                        }, label: {
                            
                            HStack {
                                
                                Text("Security")
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
                        
                        HStack {
                            
                            Text("Address Book")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .medium))
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color("primary"))
                                .font(.system(size: 13, weight: .regular))
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                        
                        HStack {
                            
                            Text("Node settings")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .medium))
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color("primary"))
                                .font(.system(size: 13, weight: .regular))
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                        
                        HStack {
                            
                            Text("Clear cache")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .medium))
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color("primary"))
                                .font(.system(size: 13, weight: .regular))
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                        .padding(.bottom)
                        
                        NavigationLink(destination: {
                            
                            AppearanceView()
                                .navigationBarBackButtonHidden()
                            
                        }, label: {
                            
                            HStack {
                                
                                Text("Appearance")
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
                        
                        NavigationLink(destination: {
                            
                            TransactionView()
                                .navigationBarBackButtonHidden()
                            
                        }, label: {
                            
                            HStack {
                                
                                Text("Transaction Cost")
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
                        
                        NavigationLink(destination: {
                            
                            CurrencyView()
                                .navigationBarBackButtonHidden()
                            
                        }, label: {
                            
                            HStack {
                                
                                Text("Fiat Currency")
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
                        
                        HStack {
                            
                            Text("Language")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .medium))
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color("primary"))
                                .font(.system(size: 13, weight: .regular))
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                        
                        HStack {
                            
                            Text("K-Line Color")
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .medium))
                            
                            Spacer()
                            
                            Image(systemName: "chevron.right")
                                .foregroundColor(Color("primary"))
                                .font(.system(size: 13, weight: .regular))
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                        .padding(.bottom)
                        
                        Group {
                            
                            HStack {
                                
                                Text("Help Center")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .medium))
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .foregroundColor(Color("primary"))
                                    .font(.system(size: 13, weight: .regular))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                            
                            HStack {
                                
                                Text("Support")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .medium))
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .foregroundColor(Color("primary"))
                                    .font(.system(size: 13, weight: .regular))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                            
                            HStack {
                                
                                Text("Community")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .medium))
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .foregroundColor(Color("primary"))
                                    .font(.system(size: 13, weight: .regular))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                            
                            HStack {
                                
                                Text("About")
                                    .foregroundColor(.white)
                                    .font(.system(size: 14, weight: .medium))
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .foregroundColor(Color("primary"))
                                    .font(.system(size: 13, weight: .regular))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                }
                
                Spacer()
            }
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
