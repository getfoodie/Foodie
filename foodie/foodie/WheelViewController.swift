//
//  WheelViewController.swift
//  foodie
//
//  Created by Kailey Van on 4/15/21.
//

import UIKit

class WheelViewController: UIViewController {

    @IBAction func BackOnClick(_ sender: UIButton) {
        performSegue(withIdentifier: "backToHome", sender: UIButton.self)
    }
    
    @IBAction func SpinOnClick(_ sender: UIButton) {
        print("Click to Spin Button was clicked")
    }
    
    @IBAction func AddOnClick(_ sender: UIButton) {
        print("Add Options Button was clicked")
    }
    
    @IBAction func RemoveOnClick(_ sender: UIButton) {
        print("Remove Options Button was clicked")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
