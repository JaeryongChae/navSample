//
//  ViewController.swift
//  NavSample
//
//  Created by MF839-008 on 2016. 5. 31..
//  Copyright © 2016년 JRChae. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    @IBAction func openSecondView(sender: AnyObject) {
        if let secondView =
            self.storyboard?.instantiateViewControllerWithIdentifier("secondview") as? SecondViewController {
            
            //let seconVC = secondView as? SecondViewController
            //seconVC?.emailText = emailTextField.text
            secondView.emailText = emailTextField.text
            
            self.navigationController?.pushViewController(secondView, animated:true)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let secondView = segue.destinationViewController as? SecondViewController {
            secondView.emailText = emailTextField.text
        }
    }
}

