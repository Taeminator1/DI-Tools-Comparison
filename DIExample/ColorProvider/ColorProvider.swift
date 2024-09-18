//
//  ColorProvider.swift
//  DIExample
//
//  Created by 윤태민 on 9/13/24.
//

import UIKit
import NeedleFoundation
import Dependencies

protocol ColorProvidable: NeedleFoundation.Dependency {
    var color: UIColor { get }
}

class ColorProvider: ColorProvidable {
    var color: UIColor {
        [.systemRed, .systemGreen, .systemBlue]
            .randomElement()!
    }
}

extension ColorProvider: Dependencies.DependencyKey {
    static var liveValue: ColorProvidable = ColorProvider()
}

extension DependencyValues {
    var colorProvider: ColorProvidable {
        get { self[ColorProvider.self] }
        set { self[ColorProvider.self] = newValue }
    }
}
