//
//  TimeLineCell.swift
//  BeagleSwiftUI
//
//  Created by Mateus Forgiarini on 6/26/20.
//  Copyright © 2020 Mateus Forgiarini da Silva. All rights reserved.
//

import UIKit
import BeagleUI

struct TimelineWidget: Widget {
    
    var appearance: Appearance?
    var flex: Flex?
    var accessibility: Accessibility?
    var id: String?
    
    let value: String
    let description: String
    let date: String
    
    func toView(context: BeagleContext, dependencies: RenderableDependencies) -> UIView {
        let view = TimelineView(frame: CGRect(x: 0, y: 0, width: context.screenController.view.frame.width, height: 100))
        view.setupView(item: TimelineViewModel(value: value, description: description, date: date))
        return view
    }
    
}

