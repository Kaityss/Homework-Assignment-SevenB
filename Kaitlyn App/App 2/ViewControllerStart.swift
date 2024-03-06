//
//  ViewController.swift
//  App 2
//
//  Created by Kaitlyn Sookdhew on 2024/02/21.
//

import UIKit

class ViewControllerStart: UIViewController {

    @IBOutlet weak var nameInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func getStarted(_ sender: Any) {
        
            performSegue(withIdentifier: "showNameSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "showNameSegue" {
                if let destinationVC = segue.destination as? ViewControllerHome {
                    destinationVC.passedName = nameInput.text
                }
            }
        }
}

