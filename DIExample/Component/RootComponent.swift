//
//  RootComponent.swift
//  DIExample
//
//  Created by 윤태민 on 9/13/24.
//

import UIKit
import NeedleFoundation

class RootComponent: BootstrapComponent {
    public var colorProvider: ColorProvidable { ColorProvider() }
    
    var rootViewController: UIViewController {
        ViewController(colorComponent: colorComponent)
    }
    
    var colorComponent: ColorComponent {
        ColorComponent(parent: self)
    }
}
