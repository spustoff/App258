//
//  HCAsRZsGiU.swift
//  App258
//
//  Created by Вячеслав on 11/17/23.
//

import SwiftUI

struct HCAsRZsGiU: View {
    
    @StateObject var PxnkGadfnk = OifhCuvvHb()
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            VStack {
                
                VStack(alignment: .leading, spacing: 10, content: {
                    
                    Text("Calculator")
                        .foregroundColor(.white)
                        .font(.system(size: 26, weight: .semibold))
                    
                    Text("Find out how much you can earn on your deposit")
                        .foregroundColor(.gray)
                        .font(.system(size: 14, weight: .regular))
                })
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                
                VStack(spacing: 30, content: {
                    
                    VStack(alignment: .leading, spacing: 10, content: {
                        
                        Text("Deposit abCnqfrGJb")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .regular))
                        
                        ZStack(alignment: .leading, content: {
                            
                            Text("$1000.00")
                                .foregroundColor(.gray)
                                .font(.system(size: 13, weight: .regular))
                                .opacity(PxnkGadfnk.abCnqfrGJb.isEmpty ? 1 : 0)
                            
                            TextField("", text: $PxnkGadfnk.abCnqfrGJb)
                                .foregroundColor(.white)
                                .font(.system(size: 13, weight: .regular))
                                .keyboardType(.decimalPad)
                        })
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color.gray.opacity(0.1)))
                    })
                    
                    VStack(alignment: .leading, spacing: 10, content: {
                        
                        Text("Interest")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .regular))
                        
                        ZStack(alignment: .leading, content: {
                            
                            Text("20%")
                                .foregroundColor(.gray)
                                .font(.system(size: 13, weight: .regular))
                                .opacity(PxnkGadfnk.wtzWnlwphG.isEmpty ? 1 : 0)
                            
                            TextField("", text: $PxnkGadfnk.wtzWnlwphG)
                                .foregroundColor(.white)
                                .font(.system(size: 13, weight: .regular))
                                .keyboardType(.decimalPad)
                        })
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 15).fill(Color.gray.opacity(0.1)))
                    })
                    
                    VStack(alignment: .leading, spacing: 10, content: {
                        
                        Text("Term")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .regular))
                        
                        Menu {
                            
                            ForEach(PxnkGadfnk.BMVxYusmqB, id: \.self) { index in
                            
                                Button(action: {
                                    
                                    PxnkGadfnk.lopXthvkxp = index
                                    
                                }, label: {
                                    
                                    HStack {
                                        
                                        Text(index)
                                        
                                        Spacer()
                                        
                                        if PxnkGadfnk.lopXthvkxp == index {
                                            
                                            Image(systemName: "checkmark")
                                        }
                                    }
                                })
                            }
                            
                        } label: {
                            
                            HStack {
                                
                                Text(PxnkGadfnk.lopXthvkxp)
                                    .foregroundColor(.white)
                                    .font(.system(size: 13, weight: .regular))
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 14, weight: .regular))
                            }
                            .padding()
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color.gray.opacity(0.1)))
                        }
                    })
                    
                    Button(action: {
                        
                        UIApplication.shared.OVueICSAzY()
                        
                        withAnimation(.spring()) {
                            
                            PxnkGadfnk.cwCbUELLUV = true
                        }
                        
                    }, label: {
                        
                        Text("Calculate")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .medium))
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                    })
                    .opacity(PxnkGadfnk.abCnqfrGJb.isEmpty || PxnkGadfnk.wtzWnlwphG.isEmpty ? 0.5 : 1)
                    .disabled(PxnkGadfnk.abCnqfrGJb.isEmpty || PxnkGadfnk.wtzWnlwphG.isEmpty ? true : false)
                })
                .padding()
                .background(RoundedRectangle(cornerRadius: 15).fill(.gray.opacity(0.1)))
                .padding()
                
                Spacer()
            }
        }
        .overlay (
        
            ZStack {
                
                Color.black.opacity(PxnkGadfnk.cwCbUELLUV ? 0.5 : 0)
                    .ignoresSafeArea()
                    .onTapGesture() {
                        
                        withAnimation(.spring()) {
                            
                            PxnkGadfnk.cwCbUELLUV = false
                        }
                    }
                
                VStack {
                    
                    Rectangle()
                        .fill(.gray.opacity(0.2))
                        .frame(width: 60, height: 5)
                    
                    VStack(alignment: .center, spacing: 7, content: {
                        
                        Text("Result")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .semibold))
                        
                        Text("$\(Int.random(in: 1...25000))")
                            .foregroundColor(Color("primary"))
                            .font(.system(size: 25, weight: .bold))
                    })
                    .padding(.vertical)
                    
                    VStack(alignment: .center, spacing: 5, content: {
                        
                        Text("Deposit abCnqfrGJb")
                            .foregroundColor(.gray)
                            .font(.system(size: 14, weight: .regular))
                        
                        Text("$\(PxnkGadfnk.abCnqfrGJb)")
                            .foregroundColor(.white)
                            .font(.system(size: 19, weight: .semibold))
                    })
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 15).fill(.gray.opacity(0.1)))
                    
                    HStack {
                        
                        VStack(alignment: .center, spacing: 5, content: {
                            
                            Text("Interest")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .regular))
                            
                            Text("\(PxnkGadfnk.wtzWnlwphG)%")
                                .foregroundColor(.white)
                                .font(.system(size: 19, weight: .semibold))
                        })
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(.gray.opacity(0.1)))
                        
                        VStack(alignment: .center, spacing: 5, content: {
                            
                            Text("Term")
                                .foregroundColor(.gray)
                                .font(.system(size: 14, weight: .regular))
                            
                            Text("\(PxnkGadfnk.lopXthvkxp)")
                                .foregroundColor(.white)
                                .font(.system(size: 19, weight: .semibold))
                        })
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(RoundedRectangle(cornerRadius: 15).fill(.gray.opacity(0.1)))
                    }
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            PxnkGadfnk.cwCbUELLUV = false
                        }
                        
                    }, label: {
                        
                        Text("Close")
                            .foregroundColor(.white)
                            .font(.system(size: 15, weight: .medium))
                            .frame(maxWidth: .infinity)
                            .frame(height: 50)
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("primary")))
                            .padding(.top)
                    })
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color("bg").ignoresSafeArea())
                .frame(maxHeight: .infinity, alignment: .bottom)
                .offset(y: PxnkGadfnk.cwCbUELLUV ? 0 : UIScreen.main.bounds.height)
            }
        )
    }
}

#Preview {
    HCAsRZsGiU()
}
