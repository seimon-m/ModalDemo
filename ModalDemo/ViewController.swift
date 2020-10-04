//
//  ViewController.swift
//  ModalDemo
//
//  Created by Simon Müller on 30.09.20.
//

import UIKit

class ViewController: UIViewController {
    
    var appearanceCounter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func showSecondButton(_ sender: UIButton) {
        let secondViewController = SecondViewController()
        secondViewController.modalTransitionStyle = .coverVertical
        secondViewController.modalPresentationStyle = .fullScreen
        self.show(secondViewController, sender: self)
    }
    
    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        appearanceCounter += 1
        print(appearanceCounter)
        if (counterLabel != nil) {
            counterLabel.text = "\(appearanceCounter).appearance"
        }
    }
    
    
    @IBAction func customBackButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    @IBAction func unwind( _ seg: UIStoryboardSegue) {
    }
    
}

