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
    var number: Int = 0
    var random = Int.random(in: -10...10)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.textAlignment = .center
        // Do any additional setup after loading the view.
    }
    
    @IBAction func plusButton(_ sender: Any) {
        number += 1
        color()
    }
    @IBAction func minusButton(_ sender: Any) {
        number -= 1
        color()
    }
    @IBAction func resetButton(_ sender: Any){
        random = Int.random(in: -10...10)
    }
    func color(){
        if number < random {
            label.textColor = UIColor.red
        }else if number == random{
            label.textColor = UIColor.green
        }else{
            label.textColor = UIColor.blue
        }
        self.label.text = "\(number)"
    }
}

