//
//  ViewController.swift
//  War
//
//  Created by Jeanette Pranin on 12/15/14.
//  Copyright (c) 2014 Jeanette Pranin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var FirstCardImageView: UIImageView!
    @IBOutlet weak var SecondCardImageView: UIImageView!
    @IBOutlet weak var playRoundButton: UIButton!
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var playerScore: UILabel!
    @IBOutlet weak var enemyScore: UILabel!
    
    var cardNamesArray:[String] = ["card2","card3","card4","card5","card6","card7","card8","card9","card10","jack","queen","queen", "ace"]
    var playerScoreTotal = 0
    var enemyScoreTotal = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playRoundTapped(sender: UIButton) {
        var firstRandomNumber:Int = Int(arc4random_uniform(13))
        var firstCardString: String = cardNamesArray[firstRandomNumber]
        
        var secondRandomNumber:Int = Int(arc4random_uniform(13))
        var secondCardString: String = cardNamesArray[secondRandomNumber]
        
        self.FirstCardImageView.image = UIImage(named: firstCardString)
        self.SecondCardImageView.image = UIImage(named: secondCardString)
        
        if firstRandomNumber > secondRandomNumber {
            playerScoreTotal += 1
            self.playerScore.text = String(playerScoreTotal)
        }
        else if firstRandomNumber == secondRandomNumber {}
        else {
            enemyScoreTotal += 1
            self.enemyScore.text = String(enemyScoreTotal)
        }
    }

}

