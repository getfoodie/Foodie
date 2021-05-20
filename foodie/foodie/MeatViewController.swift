//
//  MeatViewController.swift
//  foodie
//
//  Created by Kailey Van on 5/19/21.
//

import UIKit
import SwiftFortuneWheel

class MeatViewController: UIViewController {

    
    @IBOutlet weak var centerView: UIView!{
            didSet {
                centerView.layer.cornerRadius = centerView.bounds.width / 2
                centerView.layer.borderColor = CGColor.init(srgbRed: CGFloat(256), green: CGFloat(256), blue: CGFloat(256), alpha: 1)
                centerView.layer.borderWidth = 7
            }
        }
    
    @IBOutlet weak var meatWheel: SwiftFortuneWheel!
    
    {
            didSet {
                meatWheel.configuration = .variousWheelSimpleConfiguration
                meatWheel.slices = slices
                meatWheel.pinImage = "whitePinArrow"
                
                meatWheel.pinImageViewCollisionEffect = CollisionEffect(force: 8, angle: 20)
                
                meatWheel.edgeCollisionDetectionOn = true
            }
        }
        
        var prizes = ["Veggies", "Meats", "Drinks", "Soups", "Fast Food", "Desserts", "Carbs", "Ice Cream", "Noodles", "Rice"]
    
        
        lazy var slices: [Slice] = {
            let slices = prizes.map({ Slice.init(contents: [Slice.ContentType.text(text: $0, preferences: .variousWheelSimpleText)]) })
            return slices
        }()

        var finishIndex: Int {
            return Int.random(in: 0..<meatWheel.slices.count)
        }

        override func viewDidLoad() {
            super.viewDidLoad()

            // Do any additional setup after loading the view.
        }
        
        override func viewDidLayoutSubviews() {
            super.viewDidLayoutSubviews()
            centerView.layer.cornerRadius = centerView.bounds.width / 2
        }
    
        
    
    @IBAction func SpinOnClick(_ sender: Any) {
        meatWheel.startRotationAnimation(finishIndex: finishIndex, continuousRotationTime: 1) { (finished) in
                    print(finished)
    }
    
  
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
