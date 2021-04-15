//
//  CravingsViewController.swift
//  foodie
//
//  Created by Jendy Ren on 4/15/21.
//

import UIKit

class CravingsViewController: UIViewController {

    @IBAction func VeggiesOnClick(_ sender: UIButton) {
        print("Veggies Button was clicked")
    }
    
    @IBAction func MeatsOnClick(_ sender: UIButton) {
        print("Meats Button was clicked")
    }
    
    @IBAction func DrinksOnClick(_ sender: UIButton) {
        print("Drinks Button was clicked")
    }
    
    @IBAction func SoupsOnClick(_ sender: UIButton) {
        print("Soups Button was clicked")
    }
    @IBAction func FastFoodOnClick(_ sender: UIButton) {
        print("Fast Food Button was clicked")
    }
    @IBAction func DessertsOnClick(_ sender: UIButton) {
        print("Desserts Button was clicked")
    }
    
    @IBAction func CarbsOnClick(_ sender: UIButton) {
        print("Carbs Button was clicked")
    }
    @IBAction func RandomOnClick(_ sender: UIButton) {
        print("Random Button was clicked")
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
