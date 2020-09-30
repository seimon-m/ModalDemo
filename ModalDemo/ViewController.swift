//
//  ViewController.swift
//  ModalDemo
//
//  Created by Simon Müller on 30.09.20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showSecondButton(_ sender: UIButton) {
        let secondViewController = SecondViewController()
        secondViewController.modalTransitionStyle = .flipHorizontal
        secondViewController.modalPresentationStyle = .formSheet
        self.show(secondViewController, sender: self)
    }
}

