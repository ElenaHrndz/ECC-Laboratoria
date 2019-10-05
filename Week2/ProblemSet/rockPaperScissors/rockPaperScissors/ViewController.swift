//
//  ViewController.swift
//  rockPaperScissors
//
//  Created by Maleny on 10/5/19.
//  Copyright © 2019 Maleny. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func rockButton(_ sender: UIButton) {
        let computerChoice = randomSign()
        let rock = Sign.rock
        let result = rock.compare(computer: computerChoice)
        determinateSate(result: result)
    }
    
    @IBAction func paperButton(_ sender: UIButton) {
        let computerChoice = randomSign()
        let paper = Sign.paper
        let result = paper.compare(computer: computerChoice)
        determinateSate(result: result)
    }

    @IBAction func scissorsButton(_ sender: UIButton) {
        let computerChoice = randomSign()
        let scissors = Sign.scissors
        let result = scissors.compare(computer: computerChoice)
        determinateSate(result: result)
    }
    
    @IBAction func playAgainButton(_ sender: UIButton) {
        myView.backgroundColor = .cyan
    }
    
    func determinateSate(result: GameState) {
        switch result {
        case .win:
            myView.backgroundColor = .green
        case .lose:
            myView.backgroundColor = .red
        default:
            myView.backgroundColor = .yellow
        }
    }
}

