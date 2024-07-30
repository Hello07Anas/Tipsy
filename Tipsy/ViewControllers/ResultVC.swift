//
//  ResultVC.swift
//  Tipsy
//
//  Created by Anas Salah on 30/07/2024.
//

import UIKit

class ResultVC: UIViewController {

    @IBOutlet weak var totalPerPersonOT: UILabel!
    @IBOutlet weak var detailsOT: UILabel!
    
    var total: Double?
    var des: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        totalPerPersonOT.text = String(format: "%0.1f",total!)
        detailsOT.text = des!
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func recalcBtn(_ sender: Any) {
        self.dismiss(animated: true)
    }
}
