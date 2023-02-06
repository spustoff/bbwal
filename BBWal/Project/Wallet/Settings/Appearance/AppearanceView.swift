//
//  AppearanceView.swift
//  BBWal
//
//  Created by Вячеслав on 1/24/23.
//

import SwiftUI

struct AppearanceView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Appearance")
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
                
                VStack {
                    
                    HStack {
                        
                        Text("Dark Mode")
                            .foregroundColor(.white)
                            .font(.system(size: 14, weight: .medium))
                        
                        Spacer()
                        
                        Image(systemName: "checkmark")
                            .foregroundColor(Color("primary"))
                            .font(.system(size: 13, weight: .regular))
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                    
                    HStack {
                        
                        Text("Light mode")
                            .foregroundColor(.white)
                            .font(.system(size: 14, weight: .medium))
                        
                        Spacer()
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                    
                    HStack {
                        
                        Text("Use device settings")
                            .foregroundColor(.white)
                            .font(.system(size: 14, weight: .medium))
                        
                        Spacer()
                    }
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                }
                .padding(.horizontal)
                
                Spacer()
            }
        }
    }
}

struct AppearanceView_Previews: PreviewProvider {
    static var previews: some View {
        AppearanceView()
    }
}
