//
//  ViewController.swift
//  counter
//
//  Created by 박준서 on 2022/06/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var number: Int = 0
    var random = arc4random_uniform(15) + 1
    @IBAction func plusButton(_ sender: Any) {
        number += 1
        if number < random {
            label.textAlignment = .center
            label.textColor = UIColor.red
            self.label.text = "\(number)"
        }else if number == random{
            label.textAlignment = .center
            label.textColor = UIColor.green
            self.label.text = "\(number)"
        }else{
            label.textAlignment = .center
            label.textColor = UIColor.blue
            self.label.text = "\(number)"
        }
    }
    @IBAction func minusButton(_ sender: Any) {
        number -= 1
        if number < random {
            label.textAlignment = .center
            label.textColor = UIColor.red
            self.label.text = "\(number)"
        }else if number == random{
            label.textAlignment = .center
            label.textColor = UIColor.green
            self.label.text = "\(number)"
        }else{
            label.textAlignment = .center
            label.textColor = UIColor.blue
            self.label.text = "\(number)"
        }
    }
    @IBAction func resetButton(_ sender: Any){
        random = (arc4random_uniform(15) + 1)
    }
}

