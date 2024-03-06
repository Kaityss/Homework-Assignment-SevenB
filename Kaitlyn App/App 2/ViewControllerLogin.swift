//
//  ViewControllerLogin.swift
//  Kaitlyn App
//
//  Created by Kaitlyn Sookdhew on 2024/02/29.
//

import UIKit

class ViewControllerLogin: UIViewController {
    private var username = "Admin"
    private var password = "dvtPassword"

    @IBOutlet weak var errorMessage: UILabel!
    @IBOutlet weak var usernameInput: UITextField!
    @IBOutlet weak var passwordInput: UITextField!
    @IBOutlet weak var login: UIButton!
    
    override func viewDidLoad() {
        errorMessage.isHidden=true
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "showHomeSegue" {
                if let destinationVC = segue.destination as? ViewControllerHome {
                    destinationVC.passedName = usernameInput.text
                }
            }
        }
    

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "showHomeSegue" {
            if let inputUsername = usernameInput.text, let inputPassword = passwordInput.text {
                if inputUsername == username && inputPassword == password {
                    errorMessage.isHidden=true
                    return true
                }
                else {
                    errorMessage.isHidden=false
                    return false
                }
            }
            errorMessage.isHidden=false
            return false
        }
        return true
    }

    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
