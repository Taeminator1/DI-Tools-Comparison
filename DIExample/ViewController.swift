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
        self.view.backgroundColor = UIColor.systemBackground
        self.view.addSubview(self.sampleLabel)
        self.setUpConstraints()
    }

    func setUpConstraints() {
        let sampleLabelConstraints = [
            self.sampleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.sampleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ]
        NSLayoutConstraint.activate(sampleLabelConstraints)
    }

}
