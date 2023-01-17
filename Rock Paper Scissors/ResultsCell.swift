//
//  ResultsCell.swift
//  Rock Paper Scissors
//
//  Created by Huber, Jakob - Student on 1/13/23.
//

import UIKit

class ResultsCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var computerImage: UIImageView!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
