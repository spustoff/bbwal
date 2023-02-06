//
//  NotificationsView.swift
//  BBWal
//
//  Created by Вячеслав on 1/24/23.
//

import SwiftUI

struct NotificationsView: View {
    
    @StateObject var viewModel = NotificationsViewModel()
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ZStack {
            
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Text("Notifications")
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
                        
                        Menu {
                            
                            VStack {
                                
                                Button(action: {}, label: {
                                    
                                    Text("Mark as read")
                                    
                                })
                                
                                Button(action: {}, label: {
                                    
                                    Text("Clear all messages")
                                    
                                })
                                
                                Button(action: {}, label: {
                                    
                                    Text("Settings")
                                    
                                })
                            }
                            
                        } label: {
                            
                            Image(systemName: "ellipsis")
                                .foregroundColor(.white)
                                .font(.system(size: 17, weight: .medium))
                        }
                    }
                }
                .padding()
                
                ScrollView(.vertical, showsIndicators: true) {
                    
                    LazyVStack {
                        
                        ForEach(viewModel.notifications, id: \.self) { index in
                            
                            VStack(alignment: .leading, content: {
                                
                                HStack {
                                    
                                    Text("Transaction notification")
                                        .foregroundColor(.white)
                                        .font(.system(size: 15, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Circle()
                                        .fill(Color("primary"))
                                        .frame(width: 15, height: 15)
                                }
                                
                                Text(index)
                                    .foregroundColor(.gray)
                                    .font(.system(size: 13, weight: .regular))
                            })
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 10).fill(Color("gray")))
                        }
                    }
                    .padding(.horizontal)
                }
                
                Spacer()
            }
        }
    }
}

struct NotificationsView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationsView()
    }
}
