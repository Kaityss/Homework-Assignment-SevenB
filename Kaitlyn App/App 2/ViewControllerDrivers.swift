//
//  ViewControllerDrivers.swift
//  Kaitlyn App
//
//  Created by Kaitlyn Sookdhew on 2024/03/04.
//

import UIKit

class ViewControllerDrivers: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let drivers = ["Hamilton", "Verstappen", "Bottas", "Leclerc", "Norris", "Perez", "Sainz", "Ricciardo", "Gasly", "Alonso", "Ocon", "Stroll", "Piastri", "Tsunoda","Russell","Albon","Sargent","Magnussen","Hulkenburg","Guanyu"]

    
        override func viewDidLoad() {
            super.viewDidLoad()
            tableView.dataSource = self
            tableView.delegate = self
            tableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifier)
        }
    
}
extension ViewControllerDrivers: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        drivers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as! TableViewCell
        cell.name.text=drivers[indexPath.row]
        
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 2
        cell.layer.cornerRadius = 5
        cell.clipsToBounds = true
        
        return cell
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
