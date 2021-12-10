//
//  ViewController.swift
//  Calc
//
//  Created by admin on 10/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var numberonscreen : Double = 0
    var previosNumber : Double = 0
    var preformingMath = false
    var operation = 0
    
    @IBOutlet weak var Label : UILabel!

    
    @IBAction func numbers(_ sender: UIButton){
        
        if preformingMath == true
        {
            Label.text = String(sender.tag-1)
            numberonscreen = Double(Label.text!)!
            preformingMath = false
        }
        else{
            Label.text = Label.text! + String(sender.tag-1)
            numberonscreen = Double(Label.text!)!
        }
        
        Label.text =  String(sender.tag-1)
        numberonscreen = Double(Label.text!)!
    }

    @IBAction func buttons(_ sender: UIButton){
        
        if Label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            previosNumber = Double(Label.text!)!
            
            if sender.tag == 12 // Divide
            {
                Label.text = "/"
            }else if sender.tag == 13 //Multi
            {
                Label.text = "x"
            }else if sender.tag == 14//Minus
            {
                Label.text = "-"
            }else if sender.tag == 15 //Plus
            {
                Label.text = "+";
            }
            operation = sender.tag
            preformingMath = true;
        }
        else if sender.tag == 16
        {
            if operation == 12
            {
                Label.text = String(previosNumber / numberonscreen)
            }
            else if operation == 13{
                Label.text = String(previosNumber * numberonscreen)
            }
            else if operation == 14{
                Label.text = String(previosNumber - numberonscreen)
            }
            else if operation == 15{
                Label.text = String(previosNumber + numberonscreen)
            }
        }
        else if sender.tag == 11
        {
            Label.text = ""
            previosNumber = 0
            numberonscreen = 0
            operation = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

