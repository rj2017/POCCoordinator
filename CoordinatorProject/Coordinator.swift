//
//  Coordinator.swift
//  CoordinatorProject
//
//  Created by Raphael de Jesus on 04/01/22.
//

import Foundation
import UIKit

public protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    
    // All Coordinators will be initilised with a navigation controller
    init(navigationController: UINavigationController)
    
    func start()
}
