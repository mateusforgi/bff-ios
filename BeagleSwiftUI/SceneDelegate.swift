//
//  SceneDelegate.swift
//  BeagleSwiftUI
//
//  Created by Mateus Forgiarini on 6/23/20.
//  Copyright © 2020 Mateus Forgiarini da Silva. All rights reserved.
//

import UIKit
import SwiftUI
import BeagleUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        if let windowScene = scene as? UIWindowScene {
            BeagleConfig.config()
            BeagleConfig.registerCustomComponents()

            let beagleScreen = Beagle.screen(.remote(.init(url: "loan/timeline/1?offset=-03:00")))
                
            window = UIWindow(frame: UIScreen.main.bounds)
            window?.windowScene = windowScene
            window?.rootViewController = beagleScreen
            window?.makeKeyAndVisible()
            window?.makeKeyAndVisible()
        }
    }
}

