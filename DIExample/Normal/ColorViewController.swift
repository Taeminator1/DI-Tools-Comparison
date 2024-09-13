//
//  ColorViewController.swift
//  DIExample
//
//  Created by 윤태민 on 9/13/24.
//

import UIKit

class ColorViewController: UIViewController {
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        
        let button = UIButton(frame: view.frame)
        button.center = view.center
        button.addAction(
            UIAction { [weak self] _ in
                self?.dismiss(animated: true)
            },
            for: .touchUpInside
        )
        view.addSubview(button)
    }
}

