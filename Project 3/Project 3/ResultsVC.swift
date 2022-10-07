//
//  ResultsVC.swift
//  Unit 3 Project: Personality Quiz
//
//  Created by Boe Bogdin on 9/27/22.
//

import UIKit

class ResultsVC: UIViewController {
    
    var responses: [Answer]
    
    init?(coder: NSCoder, responses: [Answer]) {
        self.responses = responses
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBOutlet weak var resultAnswer: UILabel!
    
    @IBOutlet weak var resultDefinition: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatePersonlityResult()
        navigationItem.hidesBackButton = true
    }
    
    func calculatePersonlityResult() {
        //counting done
        var frequencyOfAnswers = responses.reduce(into: [:]) {
            (counts, answer) in
            
            counts[answer.type, default: 0] += 1
        }
        
        let responseType = responses.map { $0.type }

        for response in responseType {
            frequencyOfAnswers[response] = (frequencyOfAnswers[response] ?? 0) + 1
        }
        
        let frequentAnswersSorted = frequencyOfAnswers.sorted (by: { (pair1, pair2) in
            return pair1.value > pair2.value
        })

        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 >
           $1.1 }.first!.key
        
        resultAnswer.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinition.text = mostCommonAnswer.definition
    }
}
