//
//  ColorViewController.swift
//  DIExample
//
//  Created by 윤태민 on 9/13/24.
//

import UIKit

class ColorViewController: UIViewController {
    
    private let provider: ColorProvidable?
    
    init(provider: ColorProvidable?) {
        self.provider = provider
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = provider?.color
        
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

