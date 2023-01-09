//
//  ViewController.swift
//  ArchtirecturalPatternsSwift
//
//  Created by Pavel Naumov on 09.01.2023.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    
    private var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        person = Person(name: "Tim", surname: "Cook")
    }
    
    @IBAction func showGreetingPressed() {
        greetingLabel.text = "Hello, \(person.name) \(person.surname)!"
    }
    
}

