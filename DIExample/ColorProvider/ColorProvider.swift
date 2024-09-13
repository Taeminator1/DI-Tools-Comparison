//
//  ColorProvider.swift
//  DIExample
//
//  Created by 윤태민 on 9/13/24.
//

import UIKit

protocol ColorProvidable {
    var color: UIColor { get }
}

class ColorProvider: ColorProvidable {
    var color: UIColor {
        [.systemRed, .systemGreen, .systemBlue]
            .randomElement()!
    }
}
