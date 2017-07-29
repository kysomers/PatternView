//
//  PolkaDotExampleViewController.swift
//  PatternView
//
//  Created by Kyle Somers on 7/19/17.
//  Copyright © 2017 Kyle Somers. All rights reserved.
//

import UIKit

class PolkaDotExampleViewController: UIViewController {
    @IBOutlet weak var myPolkaDotView: PolkaDotView!

    override func viewDidLoad() {
        super.viewDidLoad()
        myPolkaDotView.setup(polkaDotAmount: .mediumAmount, polkaDotSize: .medium, backgroundColor: .blue, dotColor: .red, randomSeed: 5)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
