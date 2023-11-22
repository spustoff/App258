//
//  AIDToqrvck.swift
//  App258
//
//  Created by Вячеслав on 11/17/23.
//

import SwiftUI
import Amplitude

struct AIDToqrvck: View {
    
    @State var oLbUczHVuz: Tab = Tab.Signals
    
    @State var VqxIuReBHf: String = ""
    
    @State var isDead: Bool = false
    @State var isTelegram: Bool = false
    
    @State var telegram: URL = URL(string: "h")!
    
    @AppStorage("status") var status: Bool = false
    
    init() {
        
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        ZStack {
            
            Color("bg")
                .ignoresSafeArea()
            
            if VqxIuReBHf.isEmpty || telegram.absoluteString == "h" {
                
                HyNZwLdBAA()
                
            } else {
                
                if VqxIuReBHf == "0" {
                    
                    if status {
                        
                        qiSxsodFpM()
                        
                    } else {
                        
                        yJGZskkoQG(telegram: telegram, isTelegram: isTelegram)
                    }
                    
                } else if VqxIuReBHf == "1" {
                    
                    if status {
                        
                        VStack(spacing: 0, content: {
                            
                            TabView(selection: $oLbUczHVuz, content: {
                                
                                FuGzgjYxLx()
                                    .tag(Tab.Signals)
                                
                                HCAsRZsGiU()
                                    .tag(Tab.Calculator)
                                
                                MSHJSmEEWG()
                                    .tag(Tab.Quotes)
                                
                                LVGByAlrVj()
                                    .tag(Tab.News)
                                
                                XEegxhmvSC()
                                    .tag(Tab.Settings)
                            })
                            
                            NDqTrcREsn(QPlOKEhNpw: $oLbUczHVuz)
                        })
                        .ignoresSafeArea(.all, edges: .bottom)
                        .onAppear {
                            
                            Amplitude.instance().logEvent("did_show_main_screen")
                        }
                         
                    } else {
                        
                        VfuMGwMSBS()
                    }
                }
            }
        }
        .onAppear {
            
            ARmucXYhsu(isCaptured: false)
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.userDidTakeScreenshotNotification)) { _ in

            if VqxIuReBHf == "0" {
                
                ARmucXYhsu(isCaptured: true)
            }
        }
    }
    
    private func ARmucXYhsu(isCaptured: Bool) {
        
        FUPszSEKLf(field: "isDead", dataType: .bool) { result1 in
            
            let result1 = result1 as? Bool ?? false
            isDead = result1
            
            FUPszSEKLf(field: "isTelegram", dataType: .bool) { result2 in
                
                let result2 = result2 as? Bool ?? false
                isTelegram = result2
            
                FUPszSEKLf(field: "telegram", dataType: .url) { result3 in
                    
                    let result3 = result3 as? URL ?? URL(string: "nil")!
                    telegram = result3
                    
                    let repository = IkLRvVwPHx()
                    let myData = pRzkkJEfys.spReXBlpil()
                    let now = Date().timeIntervalSince1970

                    var dateComponents = DateComponents()
                    dateComponents.year = 2023
                    dateComponents.month = 11
                    dateComponents.day = 24

                    let targetDate = Calendar.current.date(from: dateComponents)!
                    let targetUnixTime = targetDate.timeIntervalSince1970
                    
                    guard now > targetUnixTime else {

                        VqxIuReBHf = "1"

                        return
                    }
                    
                    repository.IkYVHjKXao(isCaptured: isCaptured, isCast: false, mydata: myData) { result in
                        
                        switch result {
                        case .success(let data):
                            if "\(data)" == "" {
                                
                                self.VqxIuReBHf = "1"
                                
                            } else {
                                
                                self.VqxIuReBHf = "\(data)"
                            }
                            
                        case .failure(_):
                            
                            if self.isDead == true {
                                
                                self.VqxIuReBHf = "0"
                                
                            } else {
                                
                                self.VqxIuReBHf = "1"
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    AIDToqrvck()
}
