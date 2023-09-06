//
//  ThirdViewController.swift
//  lektion3NavAndGestures
//
//  Created by Robert Falkbäck on 2023-09-02.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var RetunBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func ReturnFromSegue(_ sender: Any) {
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
