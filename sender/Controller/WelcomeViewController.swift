//
//  ViewController.swift
//  sender
//
//  Created by Тимур on 11.03.2023.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var titleLable: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLable.alpha = 0
        view.addSubview(titleLable)
        
        UIView.animate(withDuration: 3.0, delay: 0.0, options: .curveEaseInOut, animations: { [self] in
            titleLable.alpha = 1.0
        }, completion: nil)
    }
}
