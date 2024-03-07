//
//  ViewControllerHome.swift
//  App 2
//
//  Created by Kaitlyn Sookdhew on 2024/02/21.
//

import UIKit

class ViewControllerHome: UIViewController {
    @IBOutlet weak var Label: UILabel!
    var passedName: String?
    
    @IBOutlet weak var mySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = passedName {
            Label.text="Welcome "+name
                 }
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func changeSwitch(_ sender: UISwitch) {
        if sender.isOn{
            view.backgroundColor = .secondarySystemFill
            Label.textColor = .white
        }
        else{
            view.backgroundColor = .systemGray6
            Label.textColor = .black
        }
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
