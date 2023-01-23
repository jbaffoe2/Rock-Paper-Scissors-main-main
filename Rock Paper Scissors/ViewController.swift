//
//  ViewController.swift
//  Rock Paper Scissors
//
//  Created by Laviolette, Akivah - Student on 11/18/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var rockButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rockButton.imageView?.contentMode = .scaleAspectFit
        rockButton.addTarget(self, action: #selector(buttonTapped(:)), for: UIControl.Event.touchUpInside)
        
        assignbackground()
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
    
    func buttonTapped(_ button: UIButton) {
        choiceAsInteger = button.tag
        performSegue(withIdentifier: "mySegue", sender: nil)
    }

    @IBAction func tapGesture(_ sender: Any) {
        let selectedPoint = ((sender as! AnyObject).location(in: stackView))
       
        for view in sellectImage
        {
            if view.frame.contains(selectedPoint)
            {
                choiceAsInteger = view.tag
//                sellectImage.imag = images[pictureNames]
              
            print(choiceAsInteger)
                
            }
                
                
                
        }
        
        
    }
    
    
  
    
    func assignbackground()
    {
        let background = UIImage(named: "background")
        
        var imageView : UIImageView!
        imageView = UIImageView(frame: view.bounds)
        imageView.contentMode =  UIView.ContentMode.scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = background
        imageView.center = view.center
        view.addSubview(imageView)
        self.view.sendSubviewToBack(imageView)
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


