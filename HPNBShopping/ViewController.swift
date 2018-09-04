//
//  ViewController.swift
//  HPNBShopping
//
//  Created by Chang Sophia on 2018/9/4.
//  Copyright © 2018年 Chang Sophia. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    @IBOutlet weak var nb1: UIImageView!
    @IBOutlet weak var stepper1: UIStepper!
    @IBOutlet weak var stepper2: UIStepper!
    @IBOutlet weak var stepper3: UIStepper!
    @IBOutlet weak var stepper4: UIStepper!
    @IBOutlet weak var stepper5: UIStepper!
    @IBOutlet weak var stepper6: UIStepper!
    @IBOutlet weak var count1: UILabel!
    @IBOutlet weak var count2: UILabel!
    @IBOutlet weak var count3: UILabel!
    @IBOutlet weak var count4: UILabel!
    @IBOutlet weak var count5: UILabel!
    @IBOutlet weak var count6: UILabel!
    @IBOutlet weak var totalPrice: UILabel!
    
    
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
        let senderUI = sender as UIStepper
        if senderUI == stepper1{
            count1.text = "\(stepper1.value)"
        }
        else if senderUI == stepper2{
            count2.text = "\(stepper2.value)"
        }
        else if senderUI == stepper3{
            count3.text = "\(stepper3.value)"
        }
        else if senderUI == stepper4{
            count4.text = "\(stepper4.value)"
        }
        else if senderUI == stepper5{
            count5.text = "\(stepper5.value)"
        }
        else if senderUI == stepper6{
            count6.text = "\(stepper6.value)"
    }
        let data = stepper1.value*1229.99+stepper2.value*2259+stepper3.value*2419.99+stepper4.value*799.99+stepper5.value*2699+stepper6.value*599.99
        
        totalPrice.text = "$\(data)"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

