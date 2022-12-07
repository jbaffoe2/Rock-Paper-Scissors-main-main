//
//  viewTwo.swift
//  Rock Paper Scissors
//
//  Created by Huber, Jakob - Student on 11/18/22.
//

import UIKit

class viewTwo: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        intOnethroughThree = Int.random(in: 0...2)
        print(receivingInteger)
        declareWinner(ourChoice: receivingInteger, cpuChoice: intOnethroughThree)
        print(intOnethroughThree)
    }
    
    @IBOutlet weak var loser1: UILabel!
    var receivingString = ""
    var receivingInteger = 0
    
    var intOnethroughThree = Int.random(in: 0...2)
    
    @IBOutlet weak var playerImage: UIImageView!
    
    @IBOutlet weak var computerImage1: UIImageView!
    
    
    
    func declareWinner(ourChoice: Int, cpuChoice: Int){
        
        if receivingInteger == 0 && intOnethroughThree == 1 {
            loser1.text = "Loser"
        }
      
        else if ourChoice == 1 && cpuChoice == 2 {
            loser1.text = "Loser" }
       
       else if ourChoice == 2 && cpuChoice == 0 {
            loser1.text = "Loser"}
        
       else if ourChoice == 0 && cpuChoice == 0 {
            loser1.text = "Tie"
        }
       else if ourChoice == 1 && cpuChoice == 1 {
            loser1.text = "Tie"
        }
       else if ourChoice == 2 && cpuChoice == 2 {
            loser1.text = "Tie"
        }
       else if ourChoice == 0 && cpuChoice == 2 {
            loser1.text = "Winner"
        }
       else if ourChoice == 1 && cpuChoice == 0 {
            loser1.text = "Winner"
        }
        else if ourChoice == 2 && cpuChoice == 1 {
            loser1.text = "Winner"
            
        }
        
        if ourChoice == 0 {
           playerImage.image = UIImage(named:"Rok")
       }
       
        else if ourChoice == 1 {
            playerImage.image = UIImage(named:"paper")
        }
            
        else if ourChoice == 2 {
            playerImage.image = UIImage(named:"scissors")
        }
            
        if cpuChoice == 0{
            computerImage1.image = UIImage(named:"Rok")
        }
        else if cpuChoice == 1 {
            computerImage1.image = UIImage(named:"paper")
        }
        else if cpuChoice == 2 {
            computerImage1.image = UIImage(named:"scissors")
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

// for round swapping, it might work to create a counter and set all the objects in round 1 = to 0 for the counter, then have it set so when the loser text changes to the outcome have the counter value change to 1. All the objects in round 2 would be associated with the counter value 1. Repeat for the third round.
