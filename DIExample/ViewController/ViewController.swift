//
//  ViewController.swift
//  DIExample
//
//  Created by 윤태민 on 9/13/24.
//

import UIKit
import Swinject

class ViewController: UIViewController {

//    let container: Container = {
//        let container = Container()
//        container.register(ColorProvidable.self) { _ in
//            ColorProvider()
//        }
//        container.register(ColorViewController.self) { resolver in
//            ColorViewController(provider: resolver.resolve(ColorProvidable.self))
//        }
//        return container
//    }()
    
    let colorComponent: ColorComponent
    
    init(colorComponent: ColorComponent) {
        self.colorComponent = colorComponent
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
//        let viewController = ColorViewController(provider: ColorProvider())
//        guard let viewController = container.resolve(ColorViewController.self) else { return }
        let viewController = colorComponent.colorViewController
        
        present(viewController, animated: true)
    }
}
