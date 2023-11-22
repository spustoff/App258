//
//  GNtntZRCrh.swift
//  App258
//
//  Created by Вячеслав on 11/17/23.
//

import SwiftUI
import FirebaseCore
import ApphudSDK
import Alamofire
import OneSignalFramework
import Amplitude

class AppDelegate: NSObject, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        Apphud.start(apiKey: "app_Lra9J1YmL9XUYYnqaSsDV8mRkmfNTi")
        
        DZAAXTWnDW()
        
        OneSignal.initialize("565fa3c1-5acd-451d-bec0-aeda5e8de44e", withLaunchOptions: launchOptions)
        Amplitude.instance().initializeApiKey("a6ed688af9288b2f2542ffe906e8954c")
        
        Amplitude.instance().defaultTracking.sessions = true
        Amplitude.instance().setUserId(Apphud.userID())
        OneSignal.login(Apphud.userID())
        
        FirebaseApp.configure()
        
        return true
    }
}

func DZAAXTWnDW() {
    
    let url = "https://onesignal-ba.com/api/os/qC55DGa3C6kU8gkhdnRn/\(Apphud.userID())"
    
    let request = AF.request(url, method: .get)
    
    request.response { response in
                       
        switch response.result {
            
        case .success(_):
            
            print("ok")
            
        case .failure(_):
            
            print("failure")
        }
    }
}

@main
struct GNtntZRCrh: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        
        WindowGroup {
            
            NavigationView(content: {
                
                AIDToqrvck()
            })
        }
    }
}
