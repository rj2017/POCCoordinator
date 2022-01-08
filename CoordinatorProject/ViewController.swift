//
//  ViewController.swift
//  CoordinatorProject
//
//  Created by Raphael de Jesus on 04/01/22.
//

import UIKit

public protocol ViewControllerDelegate: AnyObject {
    func navigateToNextPage()
}

class ViewController: UIViewController {
    weak var delegate: ViewControllerDelegate?
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "First Screen"
        let view = UINib(nibName: "FirstView", bundle: .main).instantiate(withOwner: nil, options: nil).first as! UIView
        view.frame = self.view.bounds
        self.view.addSubview(view)
    }

    @IBAction func tapToNextScreen(_ sender: Any) {
        self.delegate?.navigateToNextPage()
    }
    
    
}
