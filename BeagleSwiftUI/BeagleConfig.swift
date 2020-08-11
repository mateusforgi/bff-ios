//
//  BeagleConfig.swift
//  BeagleSwiftUI
//
//  Created by Mateus Forgiarini on 6/24/20.
//  Copyright © 2020 Mateus Forgiarini da Silva. All rights reserved.
//

import Foundation
import BeagleUI
import Foundation

class BeagleConfig {
    static func config() {
        let dependencies = BeagleDependencies()
        dependencies.urlBuilder = UrlBuilder(
            baseUrl: URL(string: "http://localhost:8080")

        )
        dependencies.cacheManager = nil
        Beagle.dependencies = dependencies
        
    }
    
    static func registerCustomComponents() {
        Beagle.registerCustomComponent(
            String(describing: TimelineWidget.self),
            componentType: TimelineWidget.self
            
        )
    }
}

