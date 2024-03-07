//
//  ViewControllerStandings.swift
//  App 2
//
//  Created by Kaitlyn Sookdhew on 2024/02/22.
//

import UIKit

class ViewControllerStandings: UIViewController {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var constructors: UIImageView!
    @IBOutlet weak var drivers: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        drivers.isHidden = false
        constructors.isHidden = true
    }
    

    @IBAction func SegmentChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
                case 0:
            drivers.isHidden = false
            constructors.isHidden = true
                case 1:
            drivers.isHidden = true
            constructors.isHidden = false
                default:
                    break;
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
