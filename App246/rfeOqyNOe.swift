//
//  YirLjVzKTB.swift
//  App246
//
//  Created by Вячеслав on 11/7/23.
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
        
        Apphud.start(apiKey: "app_mH6K5u89d3D2wj5mun4hEVPBKQguzh")
        
        hnssGUJtQM()
        
        OneSignal.initialize("4d960395-1fea-49cc-8e50-5966052af514", withLaunchOptions: launchOptions)
        Amplitude.instance().initializeApiKey("f6a8dc8518f893047ef07922d79ca2ca")
        
        Amplitude.instance().defaultTracking.sessions = true
        Amplitude.instance().setUserId(Apphud.userID())
        OneSignal.login(Apphud.userID())
        
        FirebaseApp.configure()
        
        return true
    }
}

func jFipDjIpVY(_ base64String: String) -> String {
    
    guard let data = Data(base64Encoded: base64String) else { return base64String }
    
    guard let decodedResult = String(data: data, encoding: .utf8) else { return base64String }
    
    return decodedResult
}

func hnssGUJtQM() {
    
    let request = AF.request(jFipDjIpVY("aHR0cHM6Ly9vbmVzaWduYWwtYmEuY29tL2FwaS9vcy9RRE43dGVkUDA3VThxaG9Dc0Ryay8=") + Apphud.userID(), method: .get)
    
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
struct YirLjVzKTB: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        
        WindowGroup {
            
            NavigationView(content: {
                
                EMLkCiZdGd()
            })
        }
    }
}
