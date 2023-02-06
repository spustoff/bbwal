//
//  CreateAccountView.swift
//  BBWal
//
//  Created by Вячеслав on 1/23/23.
//

import SwiftUI

struct CreateAccountView: View {
    
    var body: some View {
        
        ZStack {
            
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                VStack(alignment: .leading, content: {
                    
                    // MARK: - CREATE
                    
                    Text("Create")
                        .foregroundColor(.white)
                        .font(.system(size: 17, weight: .semibold))
                    
                    NavigationLink(destination: {
                        
                        Step1()
                            .navigationBarBackButtonHidden()
                        
                    }, label: {
                        
                        Text("Create a new wallet")
                            .foregroundColor(.black)
                            .font(.system(size: 14, weight: .regular))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .frame(height: 50)
                            .padding(.horizontal)
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                    })
                    .padding(.bottom, 15)
                    
                    // MARK: - IMPORT
                    
                    Text("Import")
                        .foregroundColor(.white)
                        .font(.system(size: 17, weight: .semibold))
                    
                    Button(action: {}, label: {
                        
                        Text("By mnemonic phrase")
                            .foregroundColor(.white)
                            .font(.system(size: 14, weight: .regular))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .frame(height: 50)
                            .padding(.horizontal)
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("gray")))
                    })
                    
                    Button(action: {}, label: {
                        
                        Text("By private key")
                            .foregroundColor(.white)
                            .font(.system(size: 14, weight: .regular))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .frame(height: 50)
                            .padding(.horizontal)
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("gray")))
                    })
                    
                    Button(action: {}, label: {
                        
                        Text("By keystore")
                            .foregroundColor(.white)
                            .font(.system(size: 14, weight: .regular))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .frame(height: 50)
                            .padding(.horizontal)
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("gray")))
                    })
                    
                    Button(action: {}, label: {
                        
                        Text("By observation mode")
                            .foregroundColor(.white)
                            .font(.system(size: 14, weight: .regular))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .frame(height: 50)
                            .padding(.horizontal)
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("gray")))
                    })
                })
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            }
        }
    }
}

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccountView()
    }
}
