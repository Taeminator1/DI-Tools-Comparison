//
//  ViewController.swift
//  DIExample
//
//  Created by 윤태민 on 9/13/24.
//

import UIKit

class ViewController: UIViewController {

    lazy private var sampleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Hello World!"
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let button = UIButton(frame: view.frame)
        button.setTitle("Tap Me", for: .normal)
        button.backgroundColor = .systemBackground
        button.center = view.center
        button.addAction(
            UIAction { [weak self] _ in
                self?.present(ColorViewController(), animated: true)
            },
            for: .touchUpInside
        )
        view.addSubview(button)
    }
}
