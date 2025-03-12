//
//  ViewController.swift
//  Counter
//
//  Created by Игнат Рогачевич on 12.03.25.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet private weak var historyTextView: UITextView!
    @IBOutlet weak var buttonMinus: UIButton!
    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var resetCountButton: UIButton!
    @IBOutlet weak var countView: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    private var count: Int = 0
    @IBAction func countPlusOne(_ sender: Any) {count += 1
        countView.text = String(count)
        historyTextView.text += "\n Значение увеличено на 1"
    }
    
    @IBAction func countMinusOne(_ sender: Any) {count -= 1
        if count < 0 {
            historyTextView.text += "\n Попытка уменьшить значение счётчика ниже 0"
            count = 0
        } else {
            historyTextView.text += "\n Значение уменьшено на 1"
            countView.text = String(count)
        }
    }
   
    @IBAction func resetCount(_ sender: Any) {count = 0
        countView.text = String(count)
        historyTextView.text += "\n Значение сброшено"
    }
    
}

