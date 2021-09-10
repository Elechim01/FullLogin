//
//  FullLoginApp.swift
//  Shared
//
//  Created by Michele Manniello on 10/09/21.
//

import SwiftUI
import Firebase

@main
struct FullLoginApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate 
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
//Intializing Firebase...
class AppDelegate: NSObject,UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//        Initialize Firebase..
        FirebaseApp.configure()
        return true
    }
//    for OTP vertification...
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable : Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        
    }
}
