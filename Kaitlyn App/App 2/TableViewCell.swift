//
//  TableViewCell.swift
//  Kaitlyn App
//
//  Created by Kaitlyn Sookdhew on 2024/03/02.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var name: UILabel!
    
    static let identifier = "TableViewCell"
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    static func nib() -> UINib {
        return UINib(nibName: "TableViewCell", bundle: nil)
    }
}
