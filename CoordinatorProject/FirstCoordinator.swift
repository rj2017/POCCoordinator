//
//  FirstCoordinator.swift
//  CoordinatorProject
//
//  Created by Raphael de Jesus on 04/01/22.
//

import UIKit

class FirstCoordinator: Coordinator {
    var childCoordinators: [Coordinator] = []
    
    unowned let navigationController: UINavigationController
    
    required init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc: ViewController = ViewController()
        vc.delegate = self
        self.navigationController.viewControllers = [vc]
    }
    
}

extension FirstCoordinator: ViewControllerDelegate {
    func navigateToNextPage() {
        let secondCoordinator = SecondCoordinator(navigationController: navigationController)
        secondCoordinator.delegate = self
        childCoordinators.append(secondCoordinator)
        secondCoordinator.start()
    }
}

extension FirstCoordinator: BackToFirstViewControllerDelegate {
    func navigateBackToFirstPage(newOrderCoordinator: SecondCoordinator) {
        navigationController.popToRootViewController(animated: true)
                childCoordinators.removeLast()
    }
    
    
}
