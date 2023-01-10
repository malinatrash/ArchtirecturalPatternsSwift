//
//  ViewController.swift
//  ArchtirecturalPatternsSwift
//
//  Created by Pavel Naumov on 09.01.2023.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    
    private var viewModel: GreetingViewModelProtocol! {
        didSet {
            viewModel.greetingDidChange = { [unowned self] viewModel in
                self.greetingLabel.text = viewModel.greeting
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let person = Person(name: "Tim", surname: "Cook")
        viewModel = GreetingViewModel(person: person)
    }


    @IBAction func greetingButtonPressed() {
        viewModel.showGreeting()
    }
}

