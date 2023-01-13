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
        computerChoice = Choice(rawValue: intOnethroughThree) ?? .rock
        userChoice = Choice(rawValue: receivingInteger) ?? .rock
        print(receivingInteger)
        //declareWinner(ourChoice: receivingInteger, cpuChoice: intOnethroughThree)
        declareWinner(ourChoice: userChoice, cpuChoice: computerChoice)
        print(intOnethroughThree)
    }
    @IBOutlet weak var loser1: UILabel!
    var receivingString = ""
    var receivingInteger = 0
    var intOnethroughThree = Int.random(in: 0...2)
    var computerChoice: Choice = .rock
    var userChoice: Choice = .rock
    @IBOutlet weak var playerImage: UIImageView!
    @IBOutlet weak var computerImage1: UIImageView!
    func declareWinner(ourChoice: Choice, cpuChoice: Choice){
        let game = Game(userChoice: userChoice, computerChoice: computerChoice)
        loser1.text = game.result
        playerImage.image = UIImage(named: ourChoice.imageName)
        computerImage1.image = UIImage(named: computerChoice.imageName)
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

