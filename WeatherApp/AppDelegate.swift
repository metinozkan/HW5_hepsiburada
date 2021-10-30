//
//  AppDelegate.swift
//  WeatherApp
//
//  Created by Metin özkan on 19.10.2021.
//

import UIKit
import CoreData
import Firebase



@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window :UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        FirebaseApp.configure()
        
        
        self.window=UIWindow()
        let mainView = SplashViewBuilder.build{
            print ("finish splash")
            self.fireMainView()
        }
        window?.rootViewController=mainView
        window?.makeKeyAndVisible()
      
        
        return true
    }
    
    private func fireMainView() {
        let mainView = MainViewBuilder.build()
        window?.rootViewController=mainView
        window?.makeKeyAndVisible()
    }



}

