//
//  NDqTrcREsn.swift
//  App258
//
//  Created by Вячеслав on 11/17/23.
//

import SwiftUI

struct NDqTrcREsn: View {
    
    @Binding var QPlOKEhNpw: Tab
    
    var body: some View {
        
        HStack {
            
            ForEach(Tab.allCases, id: \.self) { index in
                
                Button(action: {
                    
                    QPlOKEhNpw = index
                    
                }, label: {
                    
                    VStack(alignment: .center, spacing: 7, content: {
                        
                        Image(index.rawValue)
                            .renderingMode(.template)
                            .foregroundColor(QPlOKEhNpw == index ? Color("primary") : Color.gray)
                            .frame(width: 22, height: 22)
                        
                        Text(index.rawValue)
                            .foregroundColor(QPlOKEhNpw == index ? Color("primary") : Color.gray)
                            .font(.system(size: 12, weight: .regular))
                    })
                    .frame(maxWidth: .infinity)
                })
            }
        }
        .frame(maxWidth: .infinity)
        .padding(.horizontal)
        .padding(.top, 13)
        .padding(.bottom, 30)
        .background(Color.gray.opacity(0.05))
    }
}

enum Tab: String, CaseIterable {
    
    case Signals = "Signals"
    
    case Calculator = "Calculator"
    
    case Quotes = "Quotes"
    
    case News = "News"
    
    case Settings = "Settings"
    
}

#Preview {
    AIDToqrvck()
}
