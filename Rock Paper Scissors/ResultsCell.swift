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
    func configure(game: Game) {
        userImage.image = game.userChoice.image
        computerImage.image = game.computerChoice.image
        resultLabel.text = game.result
    }
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
