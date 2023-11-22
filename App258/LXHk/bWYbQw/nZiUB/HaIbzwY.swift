//
//  NIosZRsxFK.swift
//  App258
//
//  Created by Вячеслав on 11/17/23.
//

import SwiftUI
import OneSignalFramework

struct NIosZRsxFK: View {

    @AppStorage("status") var status: Bool = false
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                VStack(alignment: .center, spacing: 7, content: {
                    
                    Text("Don’t miss anything")
                        .foregroundColor(.white)
                        .font(.system(size: 23, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                    Text("Don’t miss the most userful information")
                        .foregroundColor(.white.opacity(0.6))
                        .font(.system(size: 15, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                .padding()
                
                Spacer()
                
                Image("users_4")
                    .resizable()
                    .aspectRatio(contentMode: .fit)

                Button(action: {
                    
                    OneSignal.Notifications.requestPermission({ accepted in
                      print("User accepted notifications: \(accepted)")
                    }, fallbackToSettings: true)
                    
                }, label: {
                    
                    Text("Enable Notifications")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                        .padding()
                })
            }
            
            VStack {
                
                HStack {
                    
                    Spacer()
                    
                    Button(action: {
                        
                        status = true
                        
                    }, label: {
                        
                        Image(systemName: "xmark")
                            .foregroundColor(.gray)
                            .font(.system(size: 12, weight: .bold))
                            .padding(7)
                            .background(Circle().fill(.gray.opacity(0.2)))
                    })
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    NIosZRsxFK()
}
