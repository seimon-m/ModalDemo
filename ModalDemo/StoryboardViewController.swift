//
//  StoryboardViewController.swift
//  ModalDemo
//
//  Created by Simon Müller on 06.10.20.
//

import UIKit

class StoryBoardViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func customBackButtonPressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
}
