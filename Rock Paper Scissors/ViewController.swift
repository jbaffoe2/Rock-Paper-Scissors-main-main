//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by Laviolette, Akivah - Student on 11/18/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    
    @IBOutlet weak var scissorsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let buttons = [rockButton, paperButton, scissorsButton]
        for (index, button) in buttons.enumerated() {
            button?.imageView?.contentMode = .scaleAspectFit
            button?.addTarget(self, action: #selector(buttonTapped(_:)), for: UIControl.Event.touchUpInside)
            button?.tag = index
            infoButton.target = self
            infoButton.action = #selector(infoButtonTapped)
            newspaperButton.target = self
            newspaperButton.action = #selector(newspaperButtonTapped)
        }
        
    }
    var counter: Int = 0
    var counterValue = ""
    var pictureNames = ["paper","rok","scissor"]
    var 🐵 = ""
    var choiceAsInteger = 0
    var games : [Game] = []
    
    @IBOutlet weak var stackView: UIStackView!
    
    
    
    
    @IBOutlet weak var rock: UIImageView!
    
    @IBOutlet weak var paper: UIImageView!
    
    @IBOutlet weak var scissor: UIImageView!
    
    @objc func buttonTapped(_ button: UIButton) {
        choiceAsInteger = button.tag
        performSegue(withIdentifier: "mySegue", sender: nil)
    }
    //
    //    @IBAction func tapGesture(_ sender: Any) {
    //        let selectedPoint = ((sender as! AnyObject).location(in: stackView))
    //
    //       for view in sellectImage
    //        {
    //        if view.frame.contains(selectedPoint)
    //         {
    //            choiceAsInteger = view.tag
    //             sellectImage.imag = images[pictureNames]
    //
    //           print(choiceAsInteger)
    //
    //           }
    //
    //
    //
    //       }
    //
    //
    //    }
    
    
    
 @IBOutlet weak var newspaperButton: UIBarButtonItem!
    
    @IBOutlet weak var infoButton: UIBarButtonItem!
    
    @objc func infoButtonTapped() {
        performSegue(withIdentifier: "info", sender: nil)
       print ("info")
    }
    @objc func newspaperButtonTapped () {
        
        print ("newspaper")
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        let nvc = segue.destination as! ResultsViewController
        
        let computer =  Int.random(in: 0...2)
        if let computerChoice = Choice(rawValue: computer), let ourChoice = Choice(rawValue: choiceAsInteger) {
            let game = Game(userChoice: ourChoice, computerChoice: computerChoice)
            games.append(game)
        }
        nvc.games = games.reversed()
        
        //        if segue.identifier == "mySegue" {
        //             // nvc.receivingInteger = choiceAsInteger
        //
        //
        //
        //        }
    }
    
    
    @IBOutlet var sellectImage: [UIImageView]!
    
    //
    //    pictureNames = letters[counter]
    //    currentLetterLabel.text = pictureNames
    //    let selectedPoint = ((sender as! AnyObject).location(in: stackView))
    //        for label in letterOne {
    //            if label.frame.contains(selectedPoint) {
    //               label.text = "\(pictureNames!)"
    //
    //            }
    //        }
    
    
    
}


