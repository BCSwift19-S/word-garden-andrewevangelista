//
//  ViewController.swift
//  Word Garden
//
//  Created by Andrew on 2/3/19.
//  Copyright © 2019 Andrew Evangelista. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var userGuessLabel: UILabel!
    
    @IBOutlet weak var guessLetterField: UITextField!
    
    @IBOutlet weak var guessLetterButton: UIButton!
    
    @IBOutlet weak var guessCountLabel: UILabel!
    
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBOutlet weak var flowerImageView: UIImageView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guessLetterButton.isEnabled = false
        playAgainButton.isHidden = true
    }
    
    
    func updateUIAfterGuess() {
        guessLetterField.resignFirstResponder()
        guessLetterField.text = ""
        
    }
    
    
    @IBAction func guessLetterFieldChanged(_ sender: UITextField) {
        if let letterGuessed = guessLetterField.text?.last {
            guessLetterField.text = "\(letterGuessed)"
            guessLetterButton.isEnabled = true
            
        }else {
            //disable button if there isn't a single character in the guessLetterField
            guessLetterButton.isEnabled = false
        }
        
    }
    
    

    @IBAction func doneKeyPressed(_ sender: UITextField) {
        updateUIAfterGuess()
    }
    
    @IBAction func guessLetterPressed(_ sender: Any) {
        updateUIAfterGuess()
    }
    
    
    @IBAction func playAgainPressed(_ sender: Any) {
    }
    
    
}

