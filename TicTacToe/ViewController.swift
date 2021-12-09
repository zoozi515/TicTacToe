//
//  ViewController.swift
//  TicTacToe
//
//  Created by admin on 09/12/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var fourthButton: UIButton!
    @IBOutlet weak var fifthButton: UIButton!
    @IBOutlet weak var sixthButton: UIButton!
    @IBOutlet weak var seventhButton: UIButton!
    @IBOutlet weak var eighthButton: UIButton!
    @IBOutlet weak var ninthButton: UIButton!
    
    @IBAction func resetButton(_ sender: UIButton) {
        playerTurn = 0
        //progressArray[i] = " "
        winnerLabel.isHidden = true
        
        firstButton.backgroundColor = UIColor.gray
        secondButton.backgroundColor = UIColor.gray
        thirdButton.backgroundColor = UIColor.gray
        fourthButton.backgroundColor = UIColor.gray
        fifthButton.backgroundColor = UIColor.gray
        sixthButton.backgroundColor = UIColor.gray
        seventhButton.backgroundColor = UIColor.gray
        eighthButton.backgroundColor = UIColor.gray
        ninthButton.backgroundColor = UIColor.gray
        
        firstButton.isEnabled = true
        secondButton.isEnabled = true
        thirdButton.isEnabled = true
        fourthButton.isEnabled = true
        fifthButton.isEnabled = true
        sixthButton.isEnabled = true
        seventhButton.isEnabled = true
        eighthButton.isEnabled = true
        ninthButton.isEnabled = true
    }
    
    var progressArray = [String](repeating: " ", count: 9)
    
    var playerTurn = 0
    
    @IBAction func firstButtonPressed(_ sender: UIButton) {
        if playerTurn < 9 {
            playerTurn += 1
            if playerTurn % 2 != 0 {
                firstButton.backgroundColor = UIColor.red
                progressArray[0] = "Red"
            } else {
                firstButton.backgroundColor = UIColor.blue
                progressArray[0] = "Blue"
            }
            firstButton.isEnabled = false
            checkTheWinner()
        }
    }
    
    @IBAction func secondButtonPresed(_ sender: UIButton) {
        if playerTurn < 9 {
            playerTurn += 1
            if playerTurn % 2 != 0 {
                secondButton.backgroundColor = UIColor.red
                progressArray[1] = "Red"
            } else {
                secondButton.backgroundColor = UIColor.blue
                progressArray[1] = "Blue"
            }
            secondButton.isEnabled = false
            checkTheWinner()
        }
    }
    
    @IBAction func thirdButtonPressed(_ sender: UIButton) {
        if playerTurn < 9 {
            playerTurn += 1
            if playerTurn % 2 != 0 {
                thirdButton.backgroundColor = UIColor.red
                progressArray[2] = "Red"
            } else {
                thirdButton.backgroundColor = UIColor.blue
                progressArray[2] = "Blue"
            }
            thirdButton.isEnabled = false
            checkTheWinner()
        }
    }
    
    @IBAction func fourthButtonPressed(_ sender: UIButton) {
        if playerTurn < 9 {
            playerTurn += 1
            
            if playerTurn % 2 != 0 {
                fourthButton.backgroundColor = UIColor.red
                progressArray[3] = "Red"
            } else {
                fourthButton.backgroundColor = UIColor.blue
                progressArray[3] = "Blue"
            }
            fourthButton.isEnabled = false
            checkTheWinner()
        }
    }
    
    @IBAction func fifthButtonPressed(_ sender: UIButton) {
        if playerTurn < 9 {
            playerTurn += 1
            
            if playerTurn % 2 != 0 {
                fifthButton.backgroundColor = UIColor.red
                progressArray[4] = "Red"
            } else {
                fifthButton.backgroundColor = UIColor.blue
                progressArray[4] = "Blue"
            }
            fifthButton.isEnabled = false
            checkTheWinner()
        }
    }
    
    @IBAction func sixthButtonPressed(_ sender: UIButton) {
        if playerTurn < 9 {
            playerTurn += 1
            
            if playerTurn % 2 != 0 {
                sixthButton.backgroundColor = UIColor.red
                progressArray[5] = "Red"
            } else {
                sixthButton.backgroundColor = UIColor.blue
                progressArray[5] = "Blue"
            }
            sixthButton.isEnabled = false
            checkTheWinner()
        }
    }
    
    @IBAction func seventhButtonPressed(_ sender: UIButton) {
        if playerTurn < 9 {
            playerTurn += 1
            
            if playerTurn % 2 != 0 {
                seventhButton.backgroundColor = UIColor.red
                progressArray[6] = "Red"
            } else {
                seventhButton.backgroundColor = UIColor.blue
                progressArray[6] = "Blue"
            }
            seventhButton.isEnabled = false
            checkTheWinner()
        }
    }
    
    @IBAction func eighthButtonPressed(_ sender: UIButton) {
        if playerTurn < 9 {
            playerTurn += 1
            
            if playerTurn % 2 != 0 {
                eighthButton.backgroundColor = UIColor.red
                progressArray[7] = "Red"
            } else {
                eighthButton.backgroundColor = UIColor.blue
                progressArray[7] = "Blue"
            }
            eighthButton.isEnabled = false
            checkTheWinner()
        }
    }
    
    @IBAction func ninthButtonPressed(_ sender: UIButton) {
        if playerTurn < 9 {
            playerTurn += 1
            
            if playerTurn % 2 != 0 {
                ninthButton.backgroundColor = UIColor.red
                progressArray[8] = "Red"
            } else {
                ninthButton.backgroundColor = UIColor.blue
                progressArray[8] = "Blue"
            }
            ninthButton.isEnabled = false
            checkTheWinner()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        winnerLabel.isHidden = true
    }

    func checkTheWinner(){
        if playerTurn >= 3{
            if progressArray[0] != " " && progressArray[0] == progressArray[1] && progressArray[1] == progressArray[2] {
                winnerLabel.text = "Congrats \(progressArray[0]) Won"
                winnerLabel.isHidden = false
                disableButtons()
            } else if progressArray[3] != " " && progressArray[3] == progressArray[4] && progressArray[4] == progressArray[5] {
                winnerLabel.text = "Congrats \(progressArray[3]) Won"
                winnerLabel.isHidden = false
            } else if progressArray[6] != " " && progressArray[6] == progressArray[7] && progressArray[7] == progressArray[8] {
                winnerLabel.text = "Congrats \(progressArray[6]) Won"
                winnerLabel.isHidden = false
            } else if progressArray[0] != " " && progressArray[0] == progressArray[3] && progressArray[3] == progressArray[6] {
                winnerLabel.text = "Congrats \(progressArray[0]) Won"
                winnerLabel.isHidden = false
            } else if progressArray[1] != " " && progressArray[1] == progressArray[4] && progressArray[4] == progressArray[7] {
                winnerLabel.text = "Congrats \(progressArray[1]) Won"
                winnerLabel.isHidden = false
            }  else if progressArray[2] != " " && progressArray[2] == progressArray[5] && progressArray[5] == progressArray[8] {
                winnerLabel.text = "Congrats \(progressArray[2]) Won"
                winnerLabel.isHidden = false
            } else if progressArray[0] != " " && progressArray[0] == progressArray[4] && progressArray[4] == progressArray[8] {
                winnerLabel.text = "Congrats \(progressArray[0]) Won"
                winnerLabel.isHidden = false
            }  else if progressArray[2] != " " && progressArray[2] == progressArray[4] && progressArray[4] == progressArray[6] {
                winnerLabel.text = "Congrats \(progressArray[2]) Won"
                winnerLabel.isHidden = false
            }
        }
    }
    
    func disableButtons(){
        firstButton.isEnabled = false
        secondButton.isEnabled = false
        thirdButton.isEnabled = false
        fourthButton.isEnabled = false
        fifthButton.isEnabled = false
        sixthButton.isEnabled = false
        seventhButton.isEnabled = false
        eighthButton.isEnabled = false
        ninthButton.isEnabled = false
    }
}

