//
//  ThirdViewController.swift
//  CoordinatorProject
//
//  Created by Raphael de Jesus on 04/01/22.
//

import UIKit

class ThirdViewController: UIViewController {

    public weak var delegate: SecondViewControllerDelegate?
    override func viewDidLoad() {
        super.viewDidLoad()
        let view = UINib(nibName: "ThirdScreen", bundle: .main).instantiate(withOwner: nil, options: nil).first as! UIView
        view.frame = self.view.bounds
        self.view.addSubview(view)
        title = "ThirdViewController"
    }
    

    @IBAction func navigateTotheFirstScreen(_ sender: Any) {
        delegate?.navigateToFirstPage()
    }
    

}
