//
//  ExampleViewController.swift
//  PatternView
//
//  Created by Kyle Somers on 7/18/17.
//  Copyright © 2017 Kyle Somers. All rights reserved.
//

import UIKit

class ExampleViewController: UIViewController
{

    @IBOutlet weak var myStripeView: StripeView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let stripe1 = Stripe(thickness: 30, color: UIColor(colorLiteralRed: 168/255, green: 188/255, blue: 238/255, alpha: 0.3))
        let stripe2 = Stripe(thickness: 50, color: UIColor(colorLiteralRed: 168/255, green: 188/255, blue: 238/255, alpha: 0.8))
        myStripeView.setup(with: [stripe1, stripe2], rotationAngleFromHorizontalInDegrees: 65)

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
