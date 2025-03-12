//
//  ViewController.swift
//  Counter
//
//  Created by Игнат Рогачевич on 12.03.25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonPlus: UIButton!
    @IBOutlet weak var countView: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    private var count: Int = 0
    @IBAction func countPlusOne(_ sender: Any) {
        count += 1
        countView.text = String(count)
    }
    
}

