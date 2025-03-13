//
//  ViewController.swift
//  Counter
//
//  Created by Игнат Рогачевич on 12.03.25.
//
import Foundation
import UIKit
final class ViewController: UIViewController, UITextViewDelegate {
    
    
    @IBOutlet private weak var historyTextView: UITextView!
    @IBOutlet private weak var minusButton: UIButton!
    @IBOutlet private weak var plusButton: UIButton!
    @IBOutlet private weak var resetCountButton: UIButton!
    @IBOutlet private weak var countLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        historyTextView.delegate = self
    }
    private var count: Int = 0
    private func formatDate() -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd.MM HH:mm"
        let dateAndTime = dateFormatter.string(from: Date())
        return dateAndTime
    }
    @IBAction private func countPlus(_ sender: Any) {count += 1
        countLabel.text = String(count)
        historyTextView.text += "\n \(formatDate()) Значение изменено на +1"
    }
    
    @IBAction private func countMinus(_ sender: Any) {count -= 1
        if count < 0 {
            historyTextView.text += "\n \(formatDate()) Попытка уменьшить значение счётчика ниже 0"
            count = 0
        } else {
            historyTextView.text += "\n \(formatDate()) Значение изменено на -1"
            countLabel.text = String(count)
        }
    }
    
    @IBAction private func resetCount(_ sender: Any) {count = 0
        countLabel.text = String(count)
        historyTextView.text += "\n \(formatDate()) Значение сброшено"
    }
    func textViewDidChange(_ textView: UITextView) {
        let range = NSRange(location: historyTextView.text.count - 1, length: 1)
        historyTextView.scrollRangeToVisible(range)
    }
    
    
}

