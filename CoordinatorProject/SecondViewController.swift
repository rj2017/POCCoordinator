//
//  SecondViewController.swift
//  CoordinatorProject
//
//  Created by Raphael de Jesus on 04/01/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    weak var delegate: SecondViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let view = UINib(nibName: "Secondscreen", bundle: .main).instantiate(withOwner: nil, options: nil).first as! UIView
        view.frame = self.view.bounds
        self.view.addSubview(view)
        title = "Second View"
        // Use custom back button to pass through coordinator.
        let backButton = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(navigateBackToFirstpage))
        self.navigationItem.leftBarButtonItem = backButton
    }
    
    @objc func navigateBackToFirstpage() {
           self.delegate?.navigateToFirstPage()
    }
    
    @IBAction func TapToThirdScreen(_ sender: Any) {
        delegate?.navigateToThirdPage()
    }
    
}

protocol SecondViewControllerDelegate: AnyObject {
    func navigateToThirdPage()
    func navigateToFirstPage()
}
