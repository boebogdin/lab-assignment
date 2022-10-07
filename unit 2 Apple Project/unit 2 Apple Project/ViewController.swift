//
//  ViewController.swift
//  unit 2 Apple Project
//
//  Created by Boe Bogdin on 9/19/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var treeimageView: UIImageView!
    @IBOutlet weak var correctWordLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var letterButton: [UIButton]!
    
    var currentGame: Game!
    
    var listOfWords = ["chuys", "provo", "seahawks", "playground", "nike", "microphone"]
    let incorrectMovesAllowed = 7
    var totalWins = 0
    var totalLosses = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newRound()
    }
    
    func newRound() {
        let newWord = listOfWords.removeFirst()
        currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
        updateUI()
    }
    
    func updateUI() {
        var letters = [String]()
        for letter in currentGame.formattedWord{
            letters.append(String(letter))
        }
        let wordWithSpacing = letters.joined(separator: " ")
        
        
        correctWordLabel.text = wordWithSpacing
        scoreLabel.text = "Wins \(totalWins), losses: \(totalLosses)"
        treeimageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        if let letterString = sender.titleLabel?.text {
            let letter = Character(letterString.lowercased())
            currentGame.playerGuessed(letter: letter)
            
            updateUI()
        }
        
    }
    

}

