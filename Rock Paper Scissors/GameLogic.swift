//
//  GameLogic.swift
//  Rock Paper Scissors
//
//  Created by Huber, Jakob - Student on 1/13/23.
//

import Foundation
import UIKit

enum Choice: Int { case rock, paper, scissors }

extension Choice {
    var imageName: String {
        switch self {
        case .rock:
            return "Rok"
        case .paper:
            return "paper"
        case .scissors:
            return "scissors"
        }
    }
    
    var image: UIImage? {
        return UIImage(named: imageName)

    }
    
    var better: Choice {
        switch self {
        case .rock:
            return .paper
        case .paper:
            return .scissors
        case .scissors:
            return .rock
        }
    }
    var worse: Choice {
        switch self {
        case .rock:
            return .scissors
        case .paper:
            return .rock
        case .scissors:
            return .paper
        }
    }
}
struct Game {
    var userChoice: Choice
    var computerChoice: Choice
}
extension Game {
    var result: String {
        if userChoice == computerChoice {
            return "tie"
        } else if  userChoice == computerChoice.worse {
            return "win"
        }else {
            return "lose"
        }
                    
        
        
    }
        
        
    }

