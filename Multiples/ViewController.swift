//
//  ViewController.swift
//  Multiples
//
//  Created by Jeffrey Cho on 11/3/15.
//  Copyright © 2015 personal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //Properties
    var currentValue = 0
    var updatedValue = 0
    
    //Outlets
    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var multipleAddText: UITextField!
    
    @IBOutlet weak var pressAddText: UITextView!
    @IBOutlet weak var math: UILabel!
    @IBOutlet weak var addButton: UIButton!
    
    @IBAction func onPlayButtonPressed(sender: UIButton!) {
        if multipleAddText.text != nil && multipleAddText.text != ""{
            logo.hidden = true
            playButton.hidden = true
            multipleAddText.hidden = true
            
            pressAddText.hidden = false
            math.hidden = true
            addButton.hidden = false
            
            updatedValue()
        }
        
    }
    
    func updateValue() {
        math.text = "\(currentValue) + \(multipleAddText.text) = \(updatedValue)"
        currentValue = updatedValue
    }

}

