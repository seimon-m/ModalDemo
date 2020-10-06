//
//  ViewController.swift
//  ModalDemo
//
//  Created by Simon Müller on 30.09.20.
//

import UIKit

class ViewController: UIViewController {
    
    var appearanceCounter = 0
    let secondViewController = SecondViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showSecondView(_ sender: UIButton) {
        secondViewController.modalTransitionStyle = .coverVertical
        // Für appearanceCounter nu fullscreen möglich. Sonst wird viewWillAppear nicht aufgerufen
        secondViewController.modalPresentationStyle = .fullScreen
        self.show(secondViewController, sender: self)
    }
    
    @IBOutlet weak var counterLabel: UILabel!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("MainView")
        appearanceCounter += 1
        // Wieso ist counterLabel nil wenn zurück von StoryboardView? Weil diese Funktion schon bei anzeigen der Storyboardwie aufgerufen wird, da selber ViewController. Und dort gibt es kein counterLabel. Lösung: Neuer ViewController
        counterLabel.text = "\(appearanceCounter).appearance"
    }
    
    @IBAction func unwind( _ seg: UIStoryboardSegue) {
    }
}

