//
//  ResultsViewController.swift
//  foodie
//
//  Created by Choi Ying Yau on 4/15/21.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var foodResultLabel: UILabel!
    @IBOutlet weak var foodResultImage: UIImageView!
    
    let randNum = Int.random(in: 0...6)
    var foodChoice = ["Meat", "Veggies", "Carbs", "Drinks", "Soups", "Desserts", "Fast Food"]
    var foodImage: [UIImage] = [
        UIImage(named:"Meats_Result")!,
        UIImage(named:"Veggie_Results")!,
        UIImage(named:"Carbs_Result")!,
        UIImage(named:"Drinks_Result")!,
        UIImage(named:"Soups_Result")!,
        UIImage(named:"Desserts_Result")!,
        UIImage(named:"FastFood_Results")!
    ]
    var updateLabel = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if(updateLabel == true){
            let randomResult = foodChoice[randNum]
            print("Your result: " + randomResult)
            self.foodResultLabel!.text = "\(randomResult)"
            self.foodResultImage.image = foodImage[randNum]
        }
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
