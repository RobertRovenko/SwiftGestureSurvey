//
//  SecondViewController.swift
//  lektion3NavAndGestures
//
//  Created by Robert Falkbäck on 2023-09-01.
//

import UIKit

class SecondViewController: UIViewController {

  
    
    @IBOutlet weak var ReturnButton: UIButton!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()

      
    }
    
  
    @IBAction func ReturnButtonAction(_ sender: Any) {
      
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
