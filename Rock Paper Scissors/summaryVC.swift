//
//  summaryVC.swift
//  Rock Paper Scissors
//
//  Created by Huber, Jakob - Student on 1/26/23.
//

import UIKit

private let reuseIdentifier = "Cell"

class summaryVC: UIViewController {
    var games : [Game] = []
    var wins = 0
    var losses = 0
    var ties = 0
    
    @IBOutlet weak var winsLabel: UILabel!
    @IBOutlet weak var lossLabel: UILabel!
    @IBOutlet weak var tieLabel: UILabel!
    
    override func viewDidLoad() { //MARK: viewDidLoadOpen
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for game in games {
            let result = game.result
            if result  == "win"{
                wins += 1
            }
            else if result == "lose"{
                losses += 1
            }
          
            else { ties += 1
            }
            
           
        }
        winsLabel.text = "\(wins)"
        lossLabel.text = "\(losses)"
     tieLabel.text = "\(ties)"
    }// MARK: viewDidLoadClose
    
  
    
  
        
    
    
    
    
    
    /*
    
     
     
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using [segue destinationViewController].
     // Pass the selected object to the new view controller.
     }
     */
    
    
}
