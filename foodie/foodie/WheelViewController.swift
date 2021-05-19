//
//  WheelViewController.swift
//  foodie
//
//  Created by Kailey Van on 4/15/21.
//

import UIKit
import SwiftFortuneWheel

class WheelViewController: UIViewController {

    @IBOutlet weak var centerView: UIView!{
            didSet {
                centerView.layer.cornerRadius = centerView.bounds.width / 2
                centerView.layer.borderColor = CGColor.init(srgbRed: CGFloat(256), green: CGFloat(256), blue: CGFloat(256), alpha: 1)
                centerView.layer.borderWidth = 7
            }
        }
    
    
    
    @IBOutlet weak var foodWheel: SwiftFortuneWheel!
    
    {
            didSet {
                foodWheel.configuration = .variousWheelSimpleConfiguration
                foodWheel.slices = slices
                foodWheel.pinImage = "whitePinArrow"
                
                foodWheel.pinImageViewCollisionEffect = CollisionEffect(force: 8, angle: 20)
                
                foodWheel.edgeCollisionDetectionOn = true
            }
        }
        
        var prizes = ["Veggies", "Meats", "Drinks", "Soups", "Fast Food", "Desserts", "Carbs", "Ice Cream", "Noodles", "Rice"]
        
        lazy var slices: [Slice] = {
            let slices = prizes.map({ Slice.init(contents: [Slice.ContentType.text(text: $0, preferences: .variousWheelSimpleText)]) })
            return slices
        }()

        var finishIndex: Int {
            return Int.random(in: 0..<foodWheel.slices.count)
        }

        
        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            centerView.layer.cornerRadius = centerView.bounds.width / 2
        }
    
    
        @IBAction func BackOnClick(_ sender: UIButton) {
            performSegue(withIdentifier: "backToHome", sender: UIButton.self)
        }
    
        @IBAction func SpinOnClick(_ sender: UIButton) {
            foodWheel.startRotationAnimation(finishIndex: 0, continuousRotationTime: 1) { (finished) in
                        print(finished)
            }
            print("Click to Spin Button was clicked")
        
       // foodWheel.startRotationAnimation(finishIndex: finishIndex, continuousRotationTime: 1) { (finished) in
         //           print(finished)
        }
    
        func AddOnClick(_ sender: UIButton) {
        print("Add Options Button was clicked")
        }
    
        func RemoveOnClick(_ sender: UIButton) {
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

