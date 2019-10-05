//
//  Sign.swift
//  rockPaperScissors
//
//  Created by Maleny on 10/5/19.
//  Copyright © 2019 Maleny. All rights reserved.
//

import UIKit

enum Sign {
  
    case rock, paper, scissors
    var option: String {
        switch self {
        case .rock:
            return "👊🏽"
        case .paper:
            return "🖐🏽"
        case .scissors:
            return "✌🏽"
        }
    }
    
    func compare(computer: Sign) -> GameState {
        if self == computer {
            return GameState.tie
        }
        
        switch self {
        case .rock:
            if computer == .paper{
                return .lose
            }
            else if computer == .scissors{
                return .win
            }
        case .paper:
            if computer == .rock{
                return .win
            }
            else if computer == .scissors{
                return .lose
            }
        case .scissors:
            if computer == .rock{
                return .lose
            }
            else if computer == .paper{
                return .win
            }
        
        }
            return .start
    }
}

//print(Sign.paper.option)

let computer = Sign.paper
let user = Sign.scissors

//print(user.compare(computer: computer))
