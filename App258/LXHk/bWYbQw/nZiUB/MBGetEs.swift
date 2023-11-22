//
//  XjVMtFzKbA.swift
//  App258
//
//  Created by Вячеслав on 11/17/23.
//

import SwiftUI

struct XjVMtFzKbA: View {
    
    let telegram: URL
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                VStack(alignment: .center, spacing: 7, content: {
                    
                    Text("Join and earn")
                        .foregroundColor(.white)
                        .font(.system(size: 23, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                    Text("Join our Telegram group trade with our team")
                        .foregroundColor(.white.opacity(0.6))
                        .font(.system(size: 15, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                .padding()
                
                Spacer()
                
                Image("users_3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)

                Button(action: {
                    
                    UIApplication.shared.open(telegram)
                    
                }, label: {
                    
                    Text("Join")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color(red: 0/255, green: 163/255, blue: 255/255)))
                        .padding()
                })
            }
            
            VStack {
                
                HStack {
                    
                    Spacer()
                    
                    NavigationLink(destination: {
                        
                        NIosZRsxFK()
                            .navigationBarBackButtonHidden()
                        
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
    
    XjVMtFzKbA(telegram: URL(string: "h")!)
}
