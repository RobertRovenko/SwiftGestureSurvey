//
//  ViewController.swift
//  lektion3NavAndGestures
//
//  Created by Robert Falkbäck on 2023-09-01.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgBall: UIImageView!
    @IBOutlet weak var blackBox: UIView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var AgeTextField: UITextField!
    @IBOutlet weak var MailTextField: UITextField!
    
    var originalBallCenter: CGPoint!
    
    let toSecondSeque = "FirstToSecond"
    let toThirdSegue = "FirstToFailed"
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }   
    
 
    
    @IBAction func onBallDrag(_ sender: UIPanGestureRecognizer) {
        
        let translation = sender.translation(in: self.view)
        
        
               imgBall.center = CGPoint(x: imgBall.center.x + translation.x, y: imgBall.center.y + translation.y)
               
      
        
        if blackBox.frame.contains(imgBall.frame){
            
            guard let nameTextField = NameTextField,
                  let ageTextField = AgeTextField,
                  let mailTextField = MailTextField,
                  !nameTextField.text!.isEmpty ,
                  !ageTextField.text!.isEmpty ,
                  !mailTextField.text!.isEmpty
            else {
               
                print("Empty Input")
                performSegue(withIdentifier: toThirdSegue, sender: self)
                sender.state = .ended
                return
            }

            
            
            if let userAge = Int(ageTextField.text ?? "") {
               
                if userAge >= 18 {
                    print("Succes")
                    performSegue(withIdentifier: toSecondSeque, sender: self)
                    return
                   
                } else {
                    print("Input Below 18")
                    performSegue(withIdentifier: toThirdSegue, sender: self)
                    return
                }
            } else {
               
                print("Input not an INT")
                performSegue(withIdentifier: toThirdSegue, sender: self)
                return
              
            }
            
            
            }
        
        sender.setTranslation(CGPoint.zero, in: self.view)
        
    }

}

