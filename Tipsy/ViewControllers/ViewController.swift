//
//  ViewController.swift
//  Tipsy
//
//  Created by Anas Salah on 30/07/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var totalBillOT: UITextField!
    @IBOutlet weak var splitCounterOT: UILabel!

    @IBOutlet weak var zeroBtnOT: UIButton!
    @IBOutlet weak var tensBtnOT: UIButton!
    @IBOutlet weak var twentyBtnOT: UIButton!
    
    var tipBrain = TipBrain()
    var counter: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tipBtn(_ sender: UIButton) {

        btnStatus(tag: sender.tag)
    }
    


    @IBAction func splitSteper(_ sender: UIStepper) {
        counter = sender.value
        splitCounterOT.text = String(format: "%.0f", sender.value)
    }
    
    @IBAction func calcBtn(_ sender: Any) {
        // calc and navigate to res Screen
        let s = selectedTip()
        let total = Double(totalBillOT.text ?? "100")
        let splitCount = Int(splitCounterOT.text ?? "2")
        
        let totalPerPerson = tipBrain.calcBillPerPerson(tip: s, spiltCount: splitCount!, totalBill: total!)
        
        let destinationVC = storyboard?.instantiateViewController(withIdentifier: "ResultVC") as? ResultVC
        destinationVC!.total = totalPerPerson
        destinationVC!.des = "split with \(String(format: "%.0f" ,counter ?? 2)) wit \(s)% tip."
        
        destinationVC!.modalPresentationStyle = .fullScreen
        self.present(destinationVC!, animated: true)
    }

    
    func btnStatus(tag: Int) {
        switch tag {
        case 0:
            zeroBtnOT.isSelected = true
            tensBtnOT.isSelected = false
            twentyBtnOT.isSelected = false
        case 1:
            zeroBtnOT.isSelected = false
            tensBtnOT.isSelected = true
            twentyBtnOT.isSelected = false
        case 2:
            zeroBtnOT.isSelected = false
            tensBtnOT.isSelected = false
            twentyBtnOT.isSelected = true
        default:
            break
        }
    }
    
    func selectedTip() -> Int {
        if zeroBtnOT.isSelected {
            return 0
        } else if tensBtnOT.isSelected {
            return 10
        } else {
            return 20
        }
    }
    /*
     if sender.tag == 0 { // 0%
         zeroBtnOT.isSelected = true
         tensBtnOT.isSelected = false
         twentyBtnOT.isSelected = false

     } else if sender.tag == 1 { // 10%
         zeroBtnOT.isSelected = false
         tensBtnOT.isSelected = true
         twentyBtnOT.isSelected = false
     } else if sender.tag == 2 { // 20%
         zeroBtnOT.isSelected = false
         tensBtnOT.isSelected = false
         twentyBtnOT.isSelected = true
     }
     */

}

