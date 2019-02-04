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
        print("in viewDidLoad is guessLetterField the first responder?", guessLetterField.isFirstResponder)
    }
    
    func updateUIAfterGuess() {
        guessLetterField.resignFirstResponder()
        guessLetterField.text = ""
        
    }
    
    
    @IBAction func guessLetterFieldChanged(_ sender: UITextField) {
        print("Guess Letter Field Changed!")
    }
    
    

    @IBAction func doneKeyPressed(_ sender: UITextField) {
        print("in doneKeyPressed is guessLetterField the first responder before updateUIAfterGuess", guessLetterField.isFirstResponder)
        
        
        updateUIAfterGuess()
        
        print("in doneKeyPressed is guessLetterField the first responder after updateUIAfterGuess", guessLetterField.isFirstResponder)
        
    }
    
    @IBAction func guessLetterPressed(_ sender: Any) {
        print("in guessLetterPressed is guessLetterField the first responder after updateUIAfterGuess", guessLetterField.isFirstResponder)
        
        updateUIAfterGuess()
          print("in guessLetterPressed is guessLetterField the first responder after updateUIAfterGuess", guessLetterField.isFirstResponder)
        
        
    }
    
    
    @IBAction func playAgainPressed(_ sender: Any) {
    }
    
    
}

