//
//  dkZhyRfSnZ.swift
//  App258
//
//  Created by Вячеслав on 11/17/23.
//

import SwiftUI

struct dkZhyRfSnZ: View {
    
    @Environment(\.presentationMode) var router
    
    @StateObject var PxnkGadfnk: jcHoGHxagz
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                VStack(alignment: .center, spacing: 20, content: {
                    
                    Rectangle()
                        .fill(.gray.opacity(0.2))
                        .frame(width: 60, height: 5)
                    
                    Text("New Quote")
                        .foregroundColor(.white)
                        .font(.system(size: 17, weight: .medium))
                })
                .padding()
                .padding(.top)
                
                HStack {
                    
                    Circle()
                        .fill(.gray.opacity(0.1))
                        .frame(width: 90, height: 90)
                        .overlay (
                        
                            Image(systemName: "person")
                                .foregroundColor(.gray.opacity(0.5))
                                .font(.system(size: 21, weight: .regular))
                        )
                    
                    VStack(alignment: .leading, spacing: 8, content: {
                        
                        ZStack(alignment: .leading, content: {
                            
                            Text("Full name")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .regular))
                                .opacity(PxnkGadfnk.name.isEmpty ? 1 : 0)
                            
                            TextField("", text: $PxnkGadfnk.name)
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                        })
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(.gray.opacity(0.1)))
                        
                        ZStack(alignment: .leading, content: {
                            
                            Text("Job title")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .regular))
                                .opacity(PxnkGadfnk.RKnSKwwvnL.isEmpty ? 1 : 0)
                            
                            TextField("", text: $PxnkGadfnk.RKnSKwwvnL)
                                .foregroundColor(.white)
                                .font(.system(size: 14, weight: .regular))
                        })
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(.gray.opacity(0.1)))
                    })
                }
                .padding()
                
                ZStack(alignment: .leading, content: {
                    
                    Text("Quote")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                        .opacity(PxnkGadfnk.BmDZpPhLqF.isEmpty ? 1 : 0)
                    
                    TextField("", text: $PxnkGadfnk.BmDZpPhLqF)
                        .foregroundColor(.white)
                        .font(.system(size: 14, weight: .regular))
                })
                .padding()
                .background(RoundedRectangle(cornerRadius: 15).fill(.gray.opacity(0.1)))
                .padding()
                
                Spacer()
                
                Button(action: {
                    
                    PxnkGadfnk.txIsmPrKSf(completion: {
                        
                        PxnkGadfnk.fnhFWdyQUT()
                        
                        router.wrappedValue.dismiss()
                        
                        PxnkGadfnk.name = ""
                        PxnkGadfnk.RKnSKwwvnL = ""
                        PxnkGadfnk.BmDZpPhLqF = ""
                    })
                    
                }, label: {
                    
                    Text("Schedule")
                        .foregroundColor(.white)
                        .font(.system(size: 15, weight: .medium))
                        .frame(maxWidth: .infinity)
                        .frame(height: 50)
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                        .padding()
                })
                .opacity(PxnkGadfnk.name.isEmpty || PxnkGadfnk.RKnSKwwvnL.isEmpty || PxnkGadfnk.BmDZpPhLqF.isEmpty ? 0.5 : 1)
                .disabled(PxnkGadfnk.name.isEmpty || PxnkGadfnk.RKnSKwwvnL.isEmpty || PxnkGadfnk.BmDZpPhLqF.isEmpty ? true : false)
            }
        }
    }
}

#Preview {
    dkZhyRfSnZ(PxnkGadfnk: jcHoGHxagz())
}
