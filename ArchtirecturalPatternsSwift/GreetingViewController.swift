//
//  ViewController.swift
//  ArchtirecturalPatternsSwift
//
//  Created by Pavel Naumov on 09.01.2023.
//

import UIKit

protocol GreetingViewProtocol: AnyObject {
    func setGreeting(_ greeting: String)
}

class GreetingViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    private var presenter: GreetingPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let person = Person(name: "Tim", surname: "Cook")
        presenter = GreetingPresenter(view: self, person: person)
    }

    @IBAction func showGreetingPressed() {
        presenter.showGreeting()
    }
}

extension GreetingViewController: GreetingViewProtocol {
    func setGreeting(_ greeting: String) {
        greetingLabel.text = greeting
    }
}

