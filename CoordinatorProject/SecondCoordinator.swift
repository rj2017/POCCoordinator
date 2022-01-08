//
//  SecondCoordinator.swift
//  CoordinatorProject
//
//  Created by Raphael de Jesus on 04/01/22.
//

import UIKit
protocol BackToFirstViewControllerDelegate: AnyObject {
    func navigateBackToFirstPage(newOrderCoordinator: SecondCoordinator)
}


class SecondCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    unowned let navigationController: UINavigationController
    weak var delegate: BackToFirstViewControllerDelegate?
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let secondViewController: SecondViewController = SecondViewController()
        secondViewController.delegate = self
        self.navigationController.pushViewController(secondViewController, animated: true)
    }
    
    
}

extension SecondCoordinator: SecondViewControllerDelegate {
    func navigateToThirdPage() {
        let thirdViewController : ThirdViewController = ThirdViewController()
        thirdViewController.delegate = self
        self.navigationController.pushViewController(thirdViewController, animated: true)
    }
    
    func navigateToFirstPage() {
        self.delegate?.navigateBackToFirstPage(newOrderCoordinator: self)
    }
    
    
}
