//
//  ViewController.swift
//  Postcard
//
//  Created by Jeffry Morco on 11/15/15.
//  Copyright © 2015 Jeffry Morco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterName: UITextField!
    @IBOutlet weak var enterMessage: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var from: UILabel!
    @IBOutlet weak var postcardSent: UILabel!
    @IBOutlet weak var sendButtonSwitch: UIButton!

    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!

    @IBOutlet weak var sendAgainLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


   //action after send button press
    @IBAction func sendButton(sender: UIButton) {
        
        sendButtonSwitch.enabled = false
        sendButtonSwitch.hidden = true
        postcardSent.hidden = false
        
        enterName.hidden = true
        enterMessage.hidden = true
        enterName.enabled = false
        enterMessage.enabled = false
        
        from.hidden = false
        
        messageLabel.hidden = false
        messageLabel.text = enterMessage.text
        
        nameLabel.hidden = false
        nameLabel.text = enterName.text
        
        enterMessage.text = ""
        enterName.text = ""
        
        sendAgainLabel.hidden = false
        yesButton.hidden = false
        noButton.hidden = false
        
        yesButton.enabled = true
        noButton.enabled = true
        
        
    
        enterMessage.resignFirstResponder()

    
    }

    //action after yes button presssed
    @IBAction func yesButtonPressed(sender: AnyObject) {
        
        enterName.hidden = false
        enterMessage.hidden = false
        enterName.enabled = true
        enterMessage.enabled = true
        
        sendButtonSwitch.hidden = false
        sendButtonSwitch.enabled = true
        
        sendAgainLabel.hidden = true
        postcardSent.hidden = true
        
        yesButton.hidden = true
        noButton.hidden = true
        
        yesButton.enabled = false
        noButton.enabled = false
        
        nameLabel.hidden = true
        messageLabel.hidden = true
        from.hidden = true
    }


}

