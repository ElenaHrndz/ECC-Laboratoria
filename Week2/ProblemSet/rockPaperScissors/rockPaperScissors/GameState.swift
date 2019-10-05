//
//  GameState.swift
//  rockPaperScissors
//
//  Created by Maleny on 10/5/19.
//  Copyright © 2019 Maleny. All rights reserved.
//

import UIKit
import GameplayKit

enum GameState{
    case tie, win, lose, start
}

let randomChoice = GKRandomDistribution(lowestValue: 0, highestValue: 2)

func randomSign() -> Sign {
  let sign = randomChoice.nextInt()
    if sign == 0 {
        return .rock
    } else if sign == 1 {
        return .paper
    } else {
        return .scissors
  }
}
