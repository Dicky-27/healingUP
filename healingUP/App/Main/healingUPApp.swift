//
//  healingUPApp.swift
//  healingUP
//
//  Created by Dicky Buwono on 14/02/22.
//

import SwiftUI
import Firebase
import FirebaseAuth

@main
struct healingUPApp: App {
  
  @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
  @ObservedObject var session = SessionService.shared
  
    var body: some Scene {
        WindowGroup {
          if session.user == nil  {
            LoginView()
          } else {
            ContentView()
          }
        }
    }
}


class AppDelegate: NSObject, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        FirebaseApp.configure()
      SessionService.shared.setup()

        return true
    }

    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {

    }

    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {

    }
}
