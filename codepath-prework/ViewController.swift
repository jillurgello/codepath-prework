//
//  ViewController.swift
//  codepath-prework
//
//  Created by Jillian Urgello on 1/11/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstNameText: UITextField!
    @IBOutlet weak var lastNameText: UITextField!
    @IBOutlet weak var schoolNameText: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var petsStepper: UIStepper!
    @IBOutlet weak var numPetsLabel: UILabel!
    @IBOutlet weak var petsSwitch: UISwitch!
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceDidTapped(_ sender: Any) {
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        let introduction = "My name is \(firstNameText.text!) \(lastNameText.text!) and I attend \(schoolNameText.text!). I am currently in my \(year!) year and I own \(numPetsLabel.text!) pets. It is \(petsSwitch.isOn) that I want more pets."
        
        // Creates alert to we  in  message (introduction)
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                
        // Dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
                
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
                
        present(alertController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

