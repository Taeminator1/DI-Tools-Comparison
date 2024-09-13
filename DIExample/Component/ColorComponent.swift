//
//  ColorComponent.swift
//  DIExample
//
//  Created by 윤태민 on 9/13/24.
//
// ColorComponent.swift에는 ColorProvider에 대한 의존성이 없음

import UIKit
import NeedleFoundation

protocol ColorDependency: Dependency {
    var colorProvider: ColorProvidable { get }
}

class ColorComponent: Component<ColorDependency> {
    var colorViewController: UIViewController {
        ColorViewController(provider: dependency.colorProvider)
    }
}
