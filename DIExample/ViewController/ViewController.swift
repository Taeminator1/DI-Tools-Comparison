//
//  ViewController.swift
//  DIExample
//
//  Created by 윤태민 on 9/13/24.
//

import UIKit

class ViewController: UIViewController {

    init() {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(frame: view.frame)
        button.setTitle("Tap Me", for: .normal)
        button.backgroundColor = .systemBackground
        button.center = view.center
        
        button.addAction(
            UIAction { [weak self] _ in
                self?.handleButton()
            },
            for: .touchUpInside
        )
        view.addSubview(button)
    }
    
    private func handleButton() {
        present(
            ColorViewController(provider: ColorProvider()),
            animated: true
        )
    }
}
