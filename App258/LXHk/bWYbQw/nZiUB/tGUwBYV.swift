//
//  CfhypzbbYG.swift
//  App258
//
//  Created by Вячеслав on 11/17/23.
//

import SwiftUI
import StoreKit

struct CfhypzbbYG: View {
    
    let telegram: URL
    let isTelegram: Bool
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                VStack(alignment: .center, spacing: 7, content: {
                    
                    Text("Rate our app in the AppStore")
                        .foregroundColor(.white)
                        .font(.system(size: 23, weight: .semibold))
                        .multilineTextAlignment(.center)
                    
                    Text("Help make the app even better")
                        .foregroundColor(.white.opacity(0.6))
                        .font(.system(size: 15, weight: .regular))
                        .multilineTextAlignment(.center)
                })
                .padding()
                
                Spacer()
                
                Image("users_2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)

                NavigationLink(destination: {
                    
                    if isTelegram == true {
                        
                        XjVMtFzKbA(telegram: telegram)
                            .navigationBarBackButtonHidden()
                        
                    } else if isTelegram == false {
                        
                        NIosZRsxFK()
                            .navigationBarBackButtonHidden()
                    }
                    
                }, label: {
                    
                    Text("Next")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                        .padding()
                })
            }
        }
        .onAppear {
            
            SKStoreReviewController.requestReview()
        }
    }
}

#Preview {
    CfhypzbbYG(telegram: URL(string: "h")!, isTelegram: false)
}
