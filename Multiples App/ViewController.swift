//
//  ViewController.swift
//  Multiples App
//
//  Created by Muhammad Zaki Murakay on 26/6/16.
//  Copyright © 2016 BLESA LABS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Properties
    var multiple = 0
    var num1 = 0
    var num2 = 0
    var maxValue = 100
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var inputTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!

    @IBOutlet weak var infoLbl: UILabel!
    @IBOutlet weak var addBtn: UIButton!
    
    //Actions
    @IBAction func playBtnPressed(sender: UIButton) {
        if inputTxtNotEmpty() {
            switchGame()
        }
    }
    
    @IBAction func addBtnPressed(sender: UIButton) {
        if reachMaxValue() {
            switchMain()
        } else {
            multiply()
        }
        
    }
    
    //Functions
    func inputTxtNotEmpty() -> Bool {
        if inputTxt.text != nil && inputTxt.text != "" {
            return true
        } else {
            return false
        }
    }
    
    func reachMaxValue() -> Bool {
        if num2 >= maxValue {
            return true
        } else {
            return false
        }
    }

    func multiply() {
        num1 = num2
        num2 = num1 + multiple
        infoLbl.text = "\(num1) + \(multiple) = \(num2)"
    }
    
    func switchMain(){
        logoImg.hidden = false
        inputTxt.hidden = false
        playBtn.hidden = false
        
        infoLbl.hidden = true
        addBtn.hidden = true
    }
    
    func switchGame() {
        logoImg.hidden = true
        inputTxt.hidden = true
        playBtn.hidden = true
        
        infoLbl.hidden = false
        addBtn.hidden = false
        infoLbl.text = "Press ADD to add!"
        resetValue()
    }
    
    func resetValue() {
        multiple = Int(inputTxt.text!)!
        num1 = 0
        num2 = 0
    }
}

